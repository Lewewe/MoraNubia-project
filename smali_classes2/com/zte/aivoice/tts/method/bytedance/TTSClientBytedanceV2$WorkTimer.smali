.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;
.super Lcn/nubia/redmagickyi/util/ZTETimer;
.source "TTSClientBytedanceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;
    }
.end annotation


# static fields
.field private static final STATE_DESTROYED:I = 0x2

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_SYNTHESISING:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private id:Ljava/lang/String;

.field private index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private speechData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private speechFile:Ljava/io/File;

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private stream:Z

.field private streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field private synthesisTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

.field private tts:Lcom/zte/aimodel/shareMemoryClient/StreamClient;

.field private words:Ljava/lang/String;

.field private workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    .line 293
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    .line 280
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 281
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 584
    new-instance p1, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$1;

    invoke-direct {p1, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$1;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    .line 294
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    .line 296
    new-instance p1, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/Runnable;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/List;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->tts:Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    return-object p0
.end method

.method static synthetic access$602(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->tts:Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Landroid/content/Context;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->context:Landroid/content/Context;

    return-object p0
.end method

.method private logSuffix()Ljava/lang/String;
    .locals 3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", words: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->words:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveTempFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 636
    invoke-static {p1}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 641
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-static {p0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->touchInBackground(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    .line 644
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0
.end method

.method private writeToFile(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 614
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 618
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 620
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 622
    new-array p1, v2, [B

    .line 623
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 626
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->getInstance()Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x5dc0

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->pcmToWav([BLjava/io/File;FI)V

    .line 628
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->saveTempFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 630
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->access$400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;Z)V

    .line 321
    invoke-super {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    return-void
.end method

.method public onSynthesisBegin()V
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis begin, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 538
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted([BZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Synthesis completed, state:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TTSClient-B-V2"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v3

    iget-object v5, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 546
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 547
    iget-boolean v3, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->stream:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 549
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v1, :cond_0

    .line 551
    iget-object v4, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v4, 0x5dc0

    if-nez v3, :cond_1

    .line 554
    iget-object v7, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object v8, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    new-instance v10, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    invoke-direct {v10, v5, v1, v5, v4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v11, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v13, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object v14, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    new-instance v3, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    const/4 v7, 0x2

    invoke-direct {v3, v7, v1, v5, v4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v1, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :goto_0
    if-eqz v2, :cond_2

    .line 559
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 560
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->writeToFile(Ljava/util/List;)Z

    .line 561
    iget-object v6, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object v7, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    new-instance v9, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, v5, v4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v10, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v11, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto/16 :goto_1

    .line 564
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v1

    iget-object v0, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 568
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_6

    .line 571
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 572
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->writeToFile(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write pcm file completed, file size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v5, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object v6, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    iget-object v7, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    iget-object v9, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_1

    .line 576
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write pcm file failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v5, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object v6, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    iget-object v9, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis failed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/code/ErrorCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->logSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 597
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 601
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 606
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 6

    .line 304
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->context:Landroid/content/Context;

    .line 305
    iput-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->id:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->words:Ljava/lang/String;

    .line 307
    iput-boolean p4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->stream:Z

    .line 308
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->speechFile:Ljava/io/File;

    .line 309
    iput-object p6, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 310
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisBegin()V

    .line 311
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p2

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
