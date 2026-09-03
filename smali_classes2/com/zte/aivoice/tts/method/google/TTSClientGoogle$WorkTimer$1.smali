.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;
.super Ljava/lang/Object;
.source "TTSClientGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Synthesis canceled, timeout!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->stop()V

    :cond_0
    return-void
.end method
