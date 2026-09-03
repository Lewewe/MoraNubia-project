.class Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;
.super Ljava/lang/Object;
.source "ASRClientMicrosoftV2.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetStateChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->access$000(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->access$000(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->access$000(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    move-result-object p1

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 54
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->access$200(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;Z)V

    :cond_0
    return-void
.end method
