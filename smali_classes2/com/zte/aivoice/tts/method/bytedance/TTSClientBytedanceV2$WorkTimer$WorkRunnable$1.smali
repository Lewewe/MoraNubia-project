.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;
.super Ljava/lang/Object;
.source "TTSClientBytedanceV2.java"

# interfaces
.implements Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualTaskFinished(I[B)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-static {p0, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->access$1200(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;I[B)V

    return-void
.end method

.method public onNmtTaskFinished(ILjava/lang/String;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-static {p0, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->access$1100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;ILjava/lang/String;)V

    return-void
.end method

.method public onTtsTaskFinished(I[B)V
    .locals 2

    .line 476
    array-length v0, p2

    const/16 v1, 0x5000

    if-ge v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    iget-object v0, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    iget-object v0, v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 480
    :goto_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-static {p0, p1, v0, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->access$1000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;II[B)V

    return-void
.end method
