.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$1;
.super Ljava/lang/Object;
.source "TTSClientGoogleV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthesis canceled, timeout!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$1;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->stop()V

    :cond_0
    return-void
.end method
