.class Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;
.super Lcn/nubia/redmagickyi/util/ZTETimer;
.source "TTSClientMicrosoft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;
    }
.end annotation


# static fields
.field private static final STATE_DESTROYED:I = 0x2

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_SYNTHESISING:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private id:Ljava/lang/String;

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

.field private streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field final synthetic this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

.field private tts:Lcom/zte/aimodel/tts/ITTSActor;

.field private words:Ljava/lang/String;

.field private workRunnable:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    .line 270
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    .line 259
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechData:Ljava/util/List;

    .line 273
    new-instance p1, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p0
.end method

.method static synthetic access$602(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->tts:Lcom/zte/aimodel/tts/ITTSActor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Landroid/content/Context;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->context:Landroid/content/Context;

    return-object p0
.end method

.method private saveTempFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    invoke-static {p1}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 465
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    invoke-static {p0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->touchInBackground(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    .line 468
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0
.end method

.method private writeToFile(Ljava/util/List;)Z
    .locals 4
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

    .line 434
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

    .line 435
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 440
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 444
    new-array p1, v2, [B

    .line 445
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 448
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

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

    .line 449
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 450
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 451
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 452
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->saveTempFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->access$400(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;)V

    .line 293
    invoke-super {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    return-void
.end method

.method public onSynthesisBegin()V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis begin, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-M"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 394
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis completed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-M"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 406
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 407
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->writeToFile(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis failed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

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

    const-string v1, "TTSClient-M"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 422
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 427
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->context:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->id:Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->words:Ljava/lang/String;

    .line 280
    iput-object p4, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->speechFile:Ljava/io/File;

    .line 281
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    .line 282
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisBegin()V

    .line 283
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p1, p2}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->workRunnable:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
