.class public abstract Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.super Ljava/lang/Object;
.source "StreamClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;,
        Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamClient"


# instance fields
.field protected chainType:Lcom/zte/aimodel/sharedmemory/ChainType;

.field protected final initLock:Ljava/lang/Object;

.field protected volatile isChildInitialized:Z

.field protected volatile isParentInitialized:Z

.field protected mCommandQueues:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mContext:Landroid/content/Context;

.field protected mHandle:I

.field protected volatile mIsConsumerRunning:Z

.field protected volatile mIsProducerRunning:Z

.field private final mProducerExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

.field protected models:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected packageName:Ljava/lang/String;

.field protected pid:I

.field protected final sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

.field protected serverState:I

.field protected sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

.field protected uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;ILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aimodel/sharedmemory/ChainType;",
            "I",
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mProducerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 43
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->serverState:I

    .line 48
    iput-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isParentInitialized:Z

    .line 49
    iput-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isChildInitialized:Z

    .line 50
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->initLock:Ljava/lang/Object;

    .line 54
    iput-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mIsConsumerRunning:Z

    .line 55
    iput-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mIsProducerRunning:Z

    .line 59
    iput-object p7, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    .line 60
    iput-object p6, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->models:Ljava/util/Map;

    .line 61
    iput-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->chainType:Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 62
    iput p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mHandle:I

    .line 63
    iput-object p4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->packageName:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mContext:Landroid/content/Context;

    .line 65
    iput p5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->pid:I

    .line 66
    new-instance p1, Lcom/zte/aimodel/FutexLockNative;

    invoke-direct {p1}, Lcom/zte/aimodel/FutexLockNative;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    .line 67
    iput-object p8, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    .line 68
    monitor-enter v2

    const/4 p1, 0x1

    .line 69
    :try_start_0
    iput-boolean p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isParentInitialized:Z

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iput-boolean p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mIsProducerRunning:Z

    .line 73
    new-instance p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$$ExternalSyntheticLambda0;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static createStreamClient(Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;->$SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aimodel/sharedmemory/ChainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 236
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v4

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInFormat()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInChannel()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInSampleRate()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioInBufferSize()I

    move-result v8

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutFormat()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutChannel()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutSampleRate()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioOutBufferSize()I

    move-result v12

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getHandle()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPid()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getModels()Ljava/util/Map;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getSharedMemoryDeathRecipient()Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getShareMemoryClientCallBack()Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioStreamOut()Z

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;Z)V

    goto/16 :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/MatchException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/MatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 232
    :cond_1
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v4

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getStringInBufferSize()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getStringOutBufferSize()I

    move-result v6

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getHandle()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getModels()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getSharedMemoryDeathRecipient()Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getShareMemoryClientCallBack()Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    move-result-object v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    goto/16 :goto_0

    .line 228
    :cond_2
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v15

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutFormat()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutChannel()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getOutSampleRate()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getStringInBufferSize()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioOutBufferSize()I

    move-result v20

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getHandle()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPid()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getModels()Ljava/util/Map;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getSharedMemoryDeathRecipient()Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getShareMemoryClientCallBack()Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioStreamOut()Z

    move-result v27

    move-object v13, v0

    invoke-direct/range {v13 .. v27}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;Z)V

    goto :goto_0

    .line 224
    :cond_3
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v30

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInBitWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInFormat()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInChannel()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getInSampleRate()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getAudioInBufferSize()I

    move-result v35

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getHandle()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getPid()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getModels()Ljava/util/Map;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getSharedMemoryDeathRecipient()Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->getShareMemoryClientCallBack()Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    move-result-object v41

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v41}, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 1

    const/4 p0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown command tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StreamClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->flush(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->pause(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->standby(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->drain(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-static {p2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->burst(I)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 187
    :pswitch_5
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->start(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    goto :goto_0

    .line 186
    :pswitch_6
    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getStatus(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    :goto_0
    return-object p0

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

.method protected buildReply(IIJJI)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 0

    .line 201
    new-instance p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    invoke-direct {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;-><init>()V

    .line 202
    iput p1, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->status:I

    .line 203
    iput p2, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->byteCount:I

    .line 204
    new-instance p1, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    invoke-direct {p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;-><init>()V

    .line 205
    iput-wide p3, p1, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->frames:J

    .line 206
    iput-wide p5, p1, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->timeNs:J

    .line 207
    iput-object p1, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->observable:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    .line 208
    iput p7, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->state:I

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mProducerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 215
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 216
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mProducerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 217
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 218
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->uuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/zte/aimodel/ModelManager;->releaseModel(Ljava/lang/String;)V

    return-void
.end method

.method public drain()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 125
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 126
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public flush()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 132
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 133
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->chainType:Lcom/zte/aimodel/sharedmemory/ChainType;

    return-object p0
.end method

.method public getStatus()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 158
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public getValidCommand()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 455
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->serverState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq p0, v0, :cond_3

    const/4 v5, 0x5

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_0

    .line 464
    new-array p0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    .line 461
    :cond_0
    new-array p0, v0, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 463
    :cond_1
    new-array p0, v4, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 460
    :cond_2
    new-array p0, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 458
    :cond_3
    new-array p0, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 456
    :cond_4
    new-array p0, v0, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected abstract isProducerShutdown()Z
.end method

.method public pause()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 139
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 140
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method protected producer_cycle()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    sget-object v1, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_PRODUCER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/FutexLockNative;->registerThread(Lcom/zte/aimodel/FutexLockNative$ThreadRole;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->initLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isParentInitialized:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isChildInitialized:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mIsProducerRunning:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isProducerShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    .line 91
    invoke-virtual {p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V

    .line 93
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->signalToServer()V

    .line 95
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->waitFromServer()V

    .line 97
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    move-result-object v1

    .line 98
    iget-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 84
    :cond_1
    :goto_2
    :try_start_3
    const-string v1, "StreamClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for Producer thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isParentInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->isChildInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 102
    :try_start_5
    const-string v1, "StreamClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "producer_cycle interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    .line 105
    throw v0
.end method

.method protected abstract readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
.end method

.method protected abstract signalToServer()V
.end method

.method public standby()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 151
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 152
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public start()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 118
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 119
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public abstract transfer(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
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
.end method

.method public abstract transfer([B)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract waitFromServer()V
.end method

.method protected abstract writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V
.end method
