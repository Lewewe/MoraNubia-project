.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;
.super Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;
.source "TTSClientBytedanceV2.java"


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

    .line 462
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelResultReceived(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelResultReceived "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-B-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextResultReceived(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onTextResultReceived "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;->this$2:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-B-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
