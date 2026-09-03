.class public Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;
.super Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.source "StreamNmtClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;
    }
.end annotation


# static fields
.field private static final COMPLETE_PATTERN:Ljava/util/regex/Pattern;

.field private static final END_LABEL:Ljava/lang/String; = "<end>"

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final START_LABEL:Ljava/lang/String; = "<start>"

.field private static final TAG:Ljava/lang/String; = "StreamNmtClient"


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mConsumerLock:Ljava/lang/Object;

.field private final mCurrentString:Ljava/lang/StringBuilder;

.field private final mIndexContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedMemory:Landroid/os/SharedMemory;

.field private mSharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

.field private mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

.field private final mStringInBufferSize:I

.field private final mStringInBufferStartOffset:I

.field private final mStringOutBufferSize:I

.field private final mStringOutBufferStartOffset:I


# direct methods
.method public static synthetic $r8$lambda$2spYXoWHwR4474uDSDA2YTxUnIY(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->consumer_cycle()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "^<\\d+><start>.*?<end>$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->COMPLETE_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "<(-?\\d+)><start>(.*?)<end>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aimodel/sharedmemory/ChainType;",
            "III",
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

    move v10, p3

    move/from16 v11, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 58
    invoke-direct/range {v1 .. v9}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;ILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCurrentString:Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIndexContentMap:Ljava/util/Map;

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mConsumerLock:Ljava/lang/Object;

    .line 59
    const-string v1, "StreamNmtClient"

    const-string v2, "create StreamNmtClient enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput v10, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringInBufferSize:I

    .line 61
    iput v11, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferSize:I

    move-object/from16 v1, p8

    .line 63
    invoke-static {p3, v11, v1}, Lcom/zte/aimodel/ModelParser/NmtConfig;->buildConfigString(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p5

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/zte/aimodel/ModelManager;->createModel(Ljava/lang/String;Lcom/zte/aimodel/sharedmemory/ChainType;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->UUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->uuid:Ljava/lang/String;

    .line 67
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    iget-object v1, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->sharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    .line 68
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringInBufferStartOffset:I

    const/16 v2, 0x20

    .line 69
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferStartOffset:I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIsConsumerRunning:Z

    .line 71
    iget-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    iput-boolean v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isChildInitialized:Z

    .line 73
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda0;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 76
    const-string v0, "StreamNmtClient"

    const-string v1, "create StreamNmtClient exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharedMemory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 4

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 535
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

    .line 537
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;
    .locals 9

    .line 249
    const-string v0, "StreamNmtClient"

    .line 0
    const-string v1, "Translation result written: "

    const-string v2, "Translation result too large, truncating: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    :try_start_0
    iget-object v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x1c

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 250
    iget-object v6, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 251
    iget-object v7, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 253
    :goto_0
    iget v8, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferSize:I

    if-le v5, v8, :cond_1

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferSize:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferSize:I

    .line 257
    :cond_1
    new-array v2, v5, [B

    .line 258
    iget-object v8, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringOutBufferStartOffset:I

    invoke-virtual {v8, p0, v2, v4, v5}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " bytes"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;

    invoke-direct {p0, v2, v6, v7}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;-><init>([BIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    const-string v1, "Error writing translation result"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    new-instance p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;

    new-array v0, v4, [B

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;-><init>([BIZ)V

    return-object p0
.end method

.method private consumer_cycle()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    sget-object v1, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/FutexLockNative;->registerThread(Lcom/zte/aimodel/FutexLockNative$ThreadRole;)V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->initLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 217
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isParentInitialized:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isChildInitialized:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :try_start_2
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->signalToProduce()V

    .line 224
    :goto_1
    iget-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIsConsumerRunning:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isConsumerShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 225
    const-string v0, "StreamNmtClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsConsumerRuning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIsConsumerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->waitToConsume()V

    .line 227
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mConsumerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 228
    :try_start_3
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->-$$Nest$fgetdata(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 230
    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {v1}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->-$$Nest$fgetisFinal(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    invoke-static {v1}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->-$$Nest$fgetindex(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)I

    move-result v1

    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;->onNmtTaskFinished(ILjava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCurrentString:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->signalToProduce()V

    .line 236
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 218
    :cond_2
    :goto_2
    :try_start_5
    const-string v1, "StreamNmtClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for Consumer thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isParentInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->isChildInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 221
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 239
    :try_start_7
    const-string v1, "Consumer"

    const-string v2, "\u6d88\u8d39\u7ebf\u7a0b\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 242
    :cond_3
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    .line 243
    throw v0
.end method

.method private findMinimumUTF8CharSize([BI)I
    .locals 4

    .line 487
    array-length v0, p1

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 491
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

    .line 495
    invoke-direct {p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->getUTF8CharLength(B)I

    move-result p0

    add-int v0, p2, p0

    .line 496
    array-length v2, p1

    if-gt v0, v2, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p2, 0x1

    .line 501
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_4

    add-int/lit8 v0, p2, 0x4

    if-ge p0, v0, :cond_4

    .line 502
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

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 348
    const-string v1, "Finding UTF-8 safe cut point - offset: %d, maxSize: %d, array length: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamNmtClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int v0, p2, p3

    .line 357
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return p3

    :cond_0
    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lt v2, p2, :cond_7

    .line 363
    aget-byte v3, p1, v2

    .line 365
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

    .line 370
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

    .line 376
    invoke-direct {p0, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->getUTF8CharLength(B)I

    move-result p0

    add-int v3, v2, p0

    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 379
    const-string v4, "Found UTF-8 start at %d, char length: %d, char end: %d"

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    array-length p0, p1

    if-gt v3, p0, :cond_4

    if-gt v3, v0, :cond_4

    add-int/lit8 p0, v2, 0x1

    :goto_1
    if-ge p0, v3, :cond_3

    .line 386
    array-length v0, p1

    if-ge p0, v0, :cond_3

    .line 387
    aget-byte v0, p1, p0

    and-int/2addr v0, v6

    if-eq v0, v7, :cond_2

    .line 390
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 389
    const-string p1, "Invalid continuation byte at %d: 0x%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
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

    .line 397
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

    .line 405
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

    .line 412
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

    .line 417
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

    .line 423
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 425
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 424
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

    .line 525
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid UTF-8 start byte: 0x%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamNmtClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isConsumerShutdown()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$transfer$0(Ljava/util/List;Ljava/lang/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 0

    .line 342
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

.method private signalToProduce()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V

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

    .line 431
    array-length v0, p1

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 431
    const-string v1, "Splitting bytes - total length: %d, max chunk size: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamNmtClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 438
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 439
    array-length v5, p1

    sub-int/2addr v5, v3

    .line 440
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v3, v6

    .line 442
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 443
    invoke-direct {p0, p1, v3, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->findUTF8SafeCutPoint([BII)I

    move-result v6

    if-gtz v6, :cond_1

    .line 446
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

    .line 447
    invoke-direct {p0, p1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->findMinimumUTF8CharSize([BI)I

    move-result v6

    if-lez v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Using minimum char size: %d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    :cond_0
    const-string v5, "Forced to use single byte chunk"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 458
    :cond_1
    :goto_1
    new-array v5, v6, [B

    .line 459
    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :try_start_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 464
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 466
    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 467
    const-string v7, "Chunk %d UTF-8 validation failed!"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v7, "Original chunk: %s"

    invoke-direct {p0, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v5, "Re-encoded: %s"

    invoke-direct {p0, v8}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 471
    :cond_2
    const-string v5, "Chunk %d validated OK: \'%s\' (%d bytes)"

    .line 472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 471
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 475
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

    .line 482
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

.method private waitToConsume()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private writeBuffer([BIZI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 141
    iget v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringInBufferSize:I

    const-string v3, "StreamNmtClient"

    if-le p4, v2, :cond_0

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Buffer overflow: current="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", adding="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    const/16 v0, 0x18

    if-eqz p3, :cond_1

    .line 148
    iget-object p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 150
    :cond_1
    iget-object p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 152
    :goto_0
    iget-object p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringInBufferStartOffset:I

    invoke-virtual {p3, p0, p1, p2, p4}, Ljava/nio/ByteBuffer;->put(I[BII)Ljava/nio/ByteBuffer;

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "send buffer is: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 542
    const-string v0, "close enter"

    const-string v1, "StreamNmtClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIsConsumerRunning:Z

    .line 544
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIsProducerRunning:Z

    .line 545
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 546
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x54

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 547
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {v0}, Lcom/zte/aimodel/FutexLockNative;->close()V

    .line 548
    invoke-super {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->close()V

    .line 549
    const-string p0, "close exit"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isProducerShutdown()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method protected producer_cycle()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->producer_cycle()V

    return-void
.end method

.method protected readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x34

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 84
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 85
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x44

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 86
    new-instance v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    invoke-direct {v6}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;-><init>()V

    .line 87
    iput-wide v2, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->frames:J

    .line 88
    iput-wide v4, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->timeNs:J

    .line 89
    new-instance v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    invoke-direct {v2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;-><init>()V

    .line 90
    iput v0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->status:I

    .line 91
    iput v1, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->byteCount:I

    .line 92
    iput-object v6, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->observable:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    .line 93
    iput p0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->state:I

    return-object v2
.end method

.method protected signalToServer()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V

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

    .line 303
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 306
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p2

    .line 308
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v0, p0, p2}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 309
    new-array p2, v3, [B

    iput-object p2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 310
    iput p1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    .line 311
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    .line 312
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 313
    iget-object p0, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0

    .line 317
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mStringInBufferSize:I

    invoke-direct {p0, p2, v4}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->splitBytesUTF8Safe([BI)Ljava/util/List;

    move-result-object p2

    .line 319
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    .line 322
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 325
    invoke-virtual {p0, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v7

    .line 326
    new-instance v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v8, p0, v7}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 327
    iput-object v6, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 328
    iput p1, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    .line 329
    :goto_1
    iput-boolean v7, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    .line 332
    iget-object v7, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
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

    const-string v7, "StreamNmtClient"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v6, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 339
    :cond_2
    new-array p0, v3, [Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 340
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 298
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected waitFromServer()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method protected writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V
    .locals 5

    .line 99
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    .line 100
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v1

    const/16 v2, 0x8

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown command tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamNmtClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 130
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mIndexContentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 125
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 126
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 121
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getBurst()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    iget v1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    iget-boolean v2, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    iget-object p1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    array-length p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->writeBuffer([BIZI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    goto :goto_0

    .line 107
    :pswitch_5
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 108
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 103
    :pswitch_6
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 104
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

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
