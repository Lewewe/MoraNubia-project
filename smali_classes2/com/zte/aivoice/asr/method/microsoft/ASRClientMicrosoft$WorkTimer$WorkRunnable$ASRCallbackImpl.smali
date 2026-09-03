.class Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;
.super Lcom/zte/aimodel/asr/IASRCallback$Stub;
.source "ASRClientMicrosoft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASRCallbackImpl"
.end annotation


# instance fields
.field private serial:J

.field final synthetic this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Lcom/zte/aimodel/asr/IASRCallback$Stub;-><init>()V

    .line 243
    iput-wide p2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->serial:J

    return-void
.end method


# virtual methods
.method public onCancelResultReceived(I)V
    .locals 4

    .line 256
    iget-wide v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->serial:J

    iget-object v2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;

    iget-object v2, v2, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->onCancelResultReceived(I)V

    return-void
.end method

.method public onTextResultReceived(ILandroid/os/Bundle;)V
    .locals 4

    .line 248
    iget-wide v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->serial:J

    iget-object v2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;

    iget-object v2, v2, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1, p2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->onTextResultReceived(ILandroid/os/Bundle;)V

    return-void
.end method
