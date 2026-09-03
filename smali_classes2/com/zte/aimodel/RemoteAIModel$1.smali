.class Lcom/zte/aimodel/RemoteAIModel$1;
.super Ljava/lang/Object;
.source "RemoteAIModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 77
    iput-object p1, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 81
    const-string p1, "RemoteAIModel"

    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p1}, Lcom/zte/aimodel/RemoteAIModel;->access$000(Lcom/zte/aimodel/RemoteAIModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p2}, Lcom/zte/aimodel/IVendorAIModelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/aimodel/RemoteAIModel;->access$102(Lcom/zte/aimodel/RemoteAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {v0}, Lcom/zte/aimodel/RemoteAIModel;->access$200(Lcom/zte/aimodel/RemoteAIModel;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 90
    :try_start_2
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/RemoteAIModel;->access$000(Lcom/zte/aimodel/RemoteAIModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 93
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 99
    const-string p1, "RemoteAIModel"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p1}, Lcom/zte/aimodel/RemoteAIModel;->access$000(Lcom/zte/aimodel/RemoteAIModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aimodel/RemoteAIModel;->access$102(Lcom/zte/aimodel/RemoteAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;

    .line 102
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel$1;->this$0:Lcom/zte/aimodel/RemoteAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/RemoteAIModel;->access$000(Lcom/zte/aimodel/RemoteAIModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
