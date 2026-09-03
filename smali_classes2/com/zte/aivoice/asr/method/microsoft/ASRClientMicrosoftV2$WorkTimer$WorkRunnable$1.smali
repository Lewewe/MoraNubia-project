.class Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$1;
.super Ljava/lang/Object;
.source "ASRClientMicrosoftV2.java"

# interfaces
.implements Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferUpdate([B)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;

    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->transfer([B)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
