.class Lcom/zte/aimodel/RemoteAIModel$2;
.super Ljava/lang/Object;
.source "RemoteAIModel.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/RemoteAIModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/RemoteAIModel;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/RemoteAIModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/zte/aimodel/RemoteAIModel$2;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 110
    const-string v0, "RemoteAIModel"

    const-string v1, "Service dead!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$2;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {v0}, Lcom/zte/aimodel/RemoteAIModel;->access$100(Lcom/zte/aimodel/RemoteAIModel;)Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$2;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {v0}, Lcom/zte/aimodel/RemoteAIModel;->access$100(Lcom/zte/aimodel/RemoteAIModel;)Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/IVendorAIModelService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$2;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {v0}, Lcom/zte/aimodel/RemoteAIModel;->access$100(Lcom/zte/aimodel/RemoteAIModel;)Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/IVendorAIModelService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel$2;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/RemoteAIModel;->access$300(Lcom/zte/aimodel/RemoteAIModel;)Landroid/content/ServiceConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
