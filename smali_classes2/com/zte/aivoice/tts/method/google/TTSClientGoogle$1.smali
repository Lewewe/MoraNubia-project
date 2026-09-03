.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;
.super Ljava/lang/Object;
.source "TTSClientGoogle.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetStateChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->access$000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;)Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->access$000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;)Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->access$000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;)Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    move-result-object p1

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 65
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;->this$0:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;->access$200(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle;Z)V

    :cond_0
    return-void
.end method
