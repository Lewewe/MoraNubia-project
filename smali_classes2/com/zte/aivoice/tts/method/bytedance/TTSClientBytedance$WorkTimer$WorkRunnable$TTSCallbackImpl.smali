.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;
.super Lcom/zte/aimodel/tts/ITTSCallback$Stub;
.source "TTSClientBytedance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSCallbackImpl"
.end annotation


# instance fields
.field private responsePart:Ljava/util/concurrent/atomic/AtomicInteger;

.field private serial:J

.field final synthetic this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Lcom/zte/aimodel/tts/ITTSCallback$Stub;-><init>()V

    .line 366
    iput-wide p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->serial:J

    .line 367
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->responsePart:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V
    .locals 4

    .line 372
    iget-wide v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->serial:J

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    iget-object v2, v2, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->responsePart:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x4

    .line 380
    :cond_1
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V

    return-void
.end method

.method public onCancelResultReceived(I)V
    .locals 4

    .line 385
    iget-wide v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->serial:J

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    iget-object v2, v2, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc3

    if-ne p1, v0, :cond_1

    .line 392
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    move-result-object p0

    const/4 p1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->onCancelResultReceived(I)V

    :cond_2
    :goto_0
    return-void
.end method
