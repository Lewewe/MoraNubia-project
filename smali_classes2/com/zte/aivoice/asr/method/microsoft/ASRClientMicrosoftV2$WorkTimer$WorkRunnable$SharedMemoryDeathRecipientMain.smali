.class Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;
.super Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;
.source "ASRClientMicrosoftV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedMemoryDeathRecipientMain"
.end annotation


# instance fields
.field private child:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;

.field final synthetic this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;->this$2:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;

    invoke-direct {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable;)V

    return-void
.end method


# virtual methods
.method public onCancelResultReceived(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;->child:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;->onCancelResultReceived(I)V

    :cond_0
    return-void
.end method

.method public onTextResultReceived(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;->child:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;->onTextResultReceived(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setChild(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;->child:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;

    return-void
.end method
