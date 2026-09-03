.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;
.super Lcom/zte/aimodel/tts/ITTSCallback$Stub;
.source "TTSClientGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Lcom/zte/aimodel/tts/ITTSCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V

    return-void
.end method

.method public onCancelResultReceived(I)V
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->onCancelResultReceived(I)V

    return-void
.end method
