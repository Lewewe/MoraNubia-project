.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;
.super Lcn/nubia/redmagickyi/util/ZTETimer;
.source "TTSClientGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;
    }
.end annotation


# static fields
.field private static final STATE_DESTROYED:I = 0x2

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_SYNTHESISING:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private id:Ljava/lang/String;

.field private isSpeakerChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private speaker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

.field private tts:Lcom/zte/aimodel/tts/ITTSActor;

.field private words:Ljava/lang/String;

.field private workRunnable:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    .line 287
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    .line 273
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->isSpeakerChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speaker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 597
    new-instance p1, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;

    invoke-direct {p1, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    .line 288
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    .line 290
    new-instance p1, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->isSpeakerChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speaker:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/Runnable;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p0
.end method

.method static synthetic access$702(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->stream:Z

    return p0
.end method

.method static synthetic access$900(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Landroid/content/Context;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->context:Landroid/content/Context;

    return-object p0
.end method

.method private logPrefix()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", words: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->words:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

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

    .line 649
    invoke-static {p1}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 654
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-static {p0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->touchInBackground(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    .line 657
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

    .line 626
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

    .line 627
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 629
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 630
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 631
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 633
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 635
    new-array p1, v2, [B

    .line 636
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 639
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

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

    .line 640
    invoke-static {}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->getInstance()Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x3e80

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->pcmToWav([BLjava/io/File;FI)V

    .line 641
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->saveTempFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 643
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->access$400(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;)V

    .line 337
    invoke-super {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    return-void
.end method

.method public onSynthesisBegin()V
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Synthesis begin, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 549
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 550
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted([BZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Synthesis completed, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speaker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TTSClient-G"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v3

    iget-object v5, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 557
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 558
    iget-boolean v3, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->stream:Z

    const-string v6, "write pcm file completed, file size "

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 560
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v1, :cond_0

    .line 562
    iget-object v8, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v8, 0x3e80

    if-nez v3, :cond_1

    .line 565
    iget-object v9, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object v10, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    new-instance v12, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    invoke-direct {v12, v5, v1, v5, v8}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v13, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 567
    iget-object v15, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object v3, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    new-instance v9, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v1, v5, v8}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v1, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    move-object/from16 v18, v9

    move-object/from16 v19, v1

    invoke-virtual/range {v15 .. v20}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 570
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 571
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->writeToFile(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3
    iget-object v9, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object v10, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    new-instance v12, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2, v5, v8}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;-><init>(I[BII)V

    iget-object v13, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v14, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto/16 :goto_1

    .line 577
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v1

    iget-object v0, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 581
    iget-object v3, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_8

    .line 584
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 585
    iget-object v1, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->writeToFile(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v5, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object v6, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    iget-object v7, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    iget-object v9, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_1

    .line 589
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "write pcm file failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v5, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object v6, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    iget-object v9, v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Synthesis failed, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

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

    const-string v1, "TTSClient-G"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->synthesisTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 610
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 614
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 619
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 6

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->logPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prepare text to speech"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->context:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->id:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->words:Ljava/lang/String;

    .line 302
    iput-boolean p4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->stream:Z

    .line 303
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speechFile:Ljava/io/File;

    .line 304
    iput-object p6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 305
    invoke-static {p3}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->findBestMatcherLanguage(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p1

    if-nez p1, :cond_2

    .line 308
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Spanish:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p4

    if-ne p1, p4, :cond_0

    .line 310
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Spanish:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    goto :goto_0

    .line 311
    :cond_0
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Spanish_US:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p4

    if-ne p1, p4, :cond_1

    .line 312
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Spanish_US:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    goto :goto_0

    .line 320
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    .line 323
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->isSpeakerChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p5, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eq p5, p1, :cond_3

    const/4 p5, 0x1

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object p4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->speaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisBegin()V

    .line 327
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 328
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p2

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_2

    .line 330
    :cond_4
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_2
    return-void
.end method
