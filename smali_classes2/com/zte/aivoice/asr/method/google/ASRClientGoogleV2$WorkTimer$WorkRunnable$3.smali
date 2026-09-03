.class Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;
.super Ljava/lang/Object;
.source "ASRClientGoogleV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->deinit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;

.field final synthetic val$tempAsr:Lcom/zte/aimodel/shareMemoryClient/StreamClient;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;->this$2:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;

    iput-object p2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;->val$tempAsr:Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;->val$tempAsr:Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
