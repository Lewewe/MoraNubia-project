.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;
.super Lcn/nubia/redmagickyi/util/ZTETimer;
.source "TTSClientBytedance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;
    }
.end annotation


# static fields
.field private static final STATE_DESTROYED:I = 0x2

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_SYNTHESISING:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private id:Ljava/lang/String;

.field private part:I

.field private serial:Ljava/util/concurrent/atomic/AtomicLong;

.field private speechData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;",
            ">;"
        }
    .end annotation
.end field

.field private speechFile:Ljava/io/File;

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field final synthetic this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

.field private tts:Lcom/zte/aimodel/tts/ITTSActor;

.field private words:Ljava/lang/String;

.field private workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    .line 278
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    .line 264
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 275
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    .line 279
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechData:Ljava/util/List;

    .line 281
    new-instance p1, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Landroid/content/Context;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)I
    .locals 0

    .line 260
    iget p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->part:I

    return p0
.end method

.method static synthetic access$700(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    return-object p0
.end method

.method private saveTempFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 526
    invoke-static {p1}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 531
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    invoke-static {p0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->touchInBackground(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    .line 534
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0
.end method

.method private trimWordParts(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 306
    const-string p0, "\\p{Cntrl}"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(?<=[!?\u3002\uff01\uff1f])|(?<=\\.)(?![0-9\\s])"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 307
    array-length p1, p0

    move-object v3, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v4, p0, v1

    .line 308
    const-string v5, "[\\pP\\pS]"

    invoke-static {v5}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zte/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    move-object v0, v3

    .line 315
    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private writeToFile(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
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

    check-cast v3, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;

    .line 504
    invoke-virtual {v3}, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->getByteArrayList()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;

    .line 508
    invoke-virtual {v3}, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->getByteArrayList()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 510
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 512
    new-array p1, v2, [B

    .line 513
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 516
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

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

    .line 517
    invoke-static {}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->getInstance()Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->pcmToWav([BLjava/io/File;)V

    .line 518
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->saveTempFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->access$400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;)V

    .line 321
    invoke-super {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    return-void
.end method

.method public onSynthesisBegin()V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis begin, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 462
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted(Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis completed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 474
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 475
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechData:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 476
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->writeToFile(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 477
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis failed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/code/ErrorCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 491
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 496
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 286
    invoke-direct {p0, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->trimWordParts(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 287
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->context:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->id:Ljava/lang/String;

    .line 289
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->part:I

    .line 290
    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->words:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->speechFile:Ljava/io/File;

    .line 292
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 293
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisBegin()V

    .line 294
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->words:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
