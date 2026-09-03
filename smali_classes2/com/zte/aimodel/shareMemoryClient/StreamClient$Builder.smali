.class public Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
.super Ljava/lang/Object;
.source "StreamClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioInBufferSize:I

.field private mAudioOutBufferSize:I

.field private mAudioStreamOut:Z

.field private final mChainType:Lcom/zte/aimodel/sharedmemory/ChainType;

.field private final mContext:Landroid/content/Context;

.field private final mHandle:I

.field private mInBitWidth:I

.field private mInChannel:I

.field private mInFormat:I

.field private mInSampleRate:I

.field private mOutBitWidth:I

.field private mOutChannel:I

.field private mOutFormat:I

.field private mOutSampleRate:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private mStringInBufferSize:I

.field private mStringOutBufferSize:I

.field private models:Ljava/util/Map;
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

.field private shareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

.field private sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/ChainType;)V
    .locals 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioStreamOut:Z

    .line 317
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mPackageName:Ljava/lang/String;

    .line 319
    iput p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mPid:I

    .line 320
    iput p4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mHandle:I

    .line 321
    iput-object p5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mChainType:Lcom/zte/aimodel/sharedmemory/ChainType;

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimodel/shareMemoryClient/StreamClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 383
    invoke-static {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->createStreamClient(Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object p0

    return-object p0
.end method

.method public getAudioInBufferSize()I
    .locals 0

    .line 406
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioInBufferSize:I

    return p0
.end method

.method public getAudioOutBufferSize()I
    .locals 0

    .line 402
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioOutBufferSize:I

    return p0
.end method

.method public getAudioStreamOut()Z
    .locals 0

    .line 450
    iget-boolean p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioStreamOut:Z

    return p0
.end method

.method public getChainType()Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mChainType:Lcom/zte/aimodel/sharedmemory/ChainType;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandle()I
    .locals 0

    .line 422
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mHandle:I

    return p0
.end method

.method public getInBitWidth()I
    .locals 0

    .line 410
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInBitWidth:I

    return p0
.end method

.method public getInChannel()I
    .locals 0

    .line 414
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInChannel:I

    return p0
.end method

.method public getInFormat()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInFormat:I

    return p0
.end method

.method public getInSampleRate()I
    .locals 0

    .line 418
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInSampleRate:I

    return p0
.end method

.method public getModels()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 434
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->models:Ljava/util/Map;

    return-object p0
.end method

.method public getOutBitWidth()I
    .locals 0

    .line 270
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutBitWidth:I

    return p0
.end method

.method public getOutChannel()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutChannel:I

    return p0
.end method

.method public getOutFormat()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutFormat:I

    return p0
.end method

.method public getOutSampleRate()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutSampleRate:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 430
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mPid:I

    return p0
.end method

.method public getShareMemoryClientCallBack()Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->shareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    return-object p0
.end method

.method public getSharedMemoryDeathRecipient()Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    return-object p0
.end method

.method public getStringInBufferSize()I
    .locals 0

    .line 392
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mStringInBufferSize:I

    return p0
.end method

.method public getStringOutBufferSize()I
    .locals 0

    .line 397
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mStringOutBufferSize:I

    return p0
.end method

.method public setAudioInBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 377
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioInBufferSize:I

    return-object p0
.end method

.method public setAudioOutBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 371
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioOutBufferSize:I

    return-object p0
.end method

.method public setAudioStreamOut(Z)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mAudioStreamOut:Z

    return-object p0
.end method

.method public setInBitWidth(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 334
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInBitWidth:I

    return-object p0
.end method

.method public setInChannel(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 339
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInChannel:I

    return-object p0
.end method

.method public setInFormat(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 265
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInFormat:I

    return-object p0
.end method

.method public setInSampleRate(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 344
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mInSampleRate:I

    return-object p0
.end method

.method public setModels(Ljava/util/Map;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->models:Ljava/util/Map;

    return-object p0
.end method

.method public setOutBitWidth(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 274
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutBitWidth:I

    return-object p0
.end method

.method public setOutChannel(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 283
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutChannel:I

    return-object p0
.end method

.method public setOutFormat(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 301
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutFormat:I

    return-object p0
.end method

.method public setOutSampleRate(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 292
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mOutSampleRate:I

    return-object p0
.end method

.method public setShareMemoryClientCallBack(Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->shareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    return-object p0
.end method

.method public setSharedMemoryDeathRecipient(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    return-object p0
.end method

.method public setStringInBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 354
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mStringInBufferSize:I

    return-object p0
.end method

.method public setStringOutBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;
    .locals 0

    .line 365
    iput p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->mStringOutBufferSize:I

    return-object p0
.end method
