.class Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;
.super Ljava/lang/Object;
.source "PcmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcmPlayer"
.end annotation


# static fields
.field private static final BIT_DEPTH:I = 0x2

.field private static final CHANNEL_COUNT:I = 0x4


# instance fields
.field private audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

.field private audioTrack:Landroid/media/AudioTrack;

.field private currentState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;",
            ">;"
        }
    .end annotation
.end field

.field private final dataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isCompleteRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private playExecutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

.field private totalBytes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->totalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;-><init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playLoop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private initAudioTrack(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 9

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    iget v0, v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->outputSimpleRate:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 117
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 122
    new-instance v8, Landroid/media/AudioTrack;

    .line 123
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/AudioStreamType;->findStreamTypeByKey(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v1

    iget v2, v1, Lcn/nubia/redmagickyi/util/AudioStreamType;->value:I

    .line 124
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object p1

    iget v3, p1, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->outputSimpleRate:I

    const/16 p1, 0x800

    .line 127
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v8, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 130
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->access$102(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;Ljava/lang/Float;)Ljava/lang/Float;

    .line 133
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->totalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316 AudioTrack \u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private notifyPlayComplete()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setAction(I)V

    .line 418
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayStopped()V

    return-void
.end method

.method private notifyPlayError(Ljava/lang/String;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {p1, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method private notifyPlayPaused()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method private notifyPlayResumed()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method private notifyPlayStart()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    :cond_0
    return-void
.end method

.method private notifyPlayStopped()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method private playLoop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-nez p1, :cond_0

    .line 285
    const-string p1, "AudioTrack \u672a\u521d\u59cb\u5316"

    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayError(Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_5

    .line 302
    array-length v1, v0

    if-nez v1, :cond_3

    goto :goto_1

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-gez v0, :cond_4

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5199\u5165\u6570\u636e\u5931\u8d25\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayError(Ljava/lang/String;)V

    goto :goto_2

    .line 331
    :cond_4
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    goto :goto_0

    .line 304
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getNotificationMarkerPosition()I

    .line 310
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 312
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 316
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayError(Ljava/lang/String;)V

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e\u5668\u7ed3\u675f\u5faa\u73af: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 339
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 345
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayComplete()V

    goto :goto_3

    .line 346
    :cond_7
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-eq p1, v0, :cond_8

    .line 347
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getCurrentPlaybackPositionMs()J
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 357
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentState()Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    return-object p0
.end method

.method public getTotalDurationMs()J
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->totalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->totalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 366
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markDataWriteComplete()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public pausePlay()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayPaused()V

    :cond_2
    return-void
.end method

.method public resumePlay()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayResumed()V

    :cond_2
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->access$100(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->access$100(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->access$102(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;Ljava/lang/Float;)Ljava/lang/Float;

    .line 275
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_1
    return-void
.end method

.method public startPlay(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u64ad\u653e\u5668\u5df2\u5728\u64ad\u653e\u4e2d"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    .line 178
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayStart()V

    .line 179
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->initAudioTrack(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 183
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playExecutor:Ljava/util/concurrent/ExecutorService;

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->setVolume(F)V

    .line 193
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->pcmData:[B

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->writePCMData([B)V

    .line 195
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;-><init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 206
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u64ad\u653e\u5668\u5f00\u59cb\u64ad\u653e"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u64ad\u653e\u5668\u5df2\u505c\u6b62"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5668\u8c03\u7528\u505c\u6b62=======begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 249
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 253
    iput-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->playExecutor:Ljava/util/concurrent/ExecutorService;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 258
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 259
    iput-object v1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5668\u8c03\u7528\u505c\u6b62========end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->notifyPlayStopped()V

    return-void
.end method

.method public writePCMData([B)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "writePCMData begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 146
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    if-ne v0, v1, :cond_1

    .line 151
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u64ad\u653e\u5668\u5df2\u505c\u6b62/\u64ad\u653e\u5b8c\u6210\uff0c\u65e0\u6cd5\u5199\u5165\u6570\u636e"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->totalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 156
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isCompleteCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "writePCMData end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->this$0:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PCM \u6570\u636e\u4e3a\u7a7a\uff0c\u8df3\u8fc7\u5199\u5165"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
