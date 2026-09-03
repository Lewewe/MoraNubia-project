.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;
.super Ljava/lang/Object;
.source "TTSClientBytedance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->deinit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

.field final synthetic val$tempTTS:Lcom/zte/aimodel/tts/ITTSActor;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;Lcom/zte/aimodel/tts/ITTSActor;)V
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

    .line 442
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;

    iput-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;->val$tempTTS:Lcom/zte/aimodel/tts/ITTSActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 446
    :try_start_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;->val$tempTTS:Lcom/zte/aimodel/tts/ITTSActor;

    invoke-interface {p0}, Lcom/zte/aimodel/tts/ITTSActor;->deinit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
