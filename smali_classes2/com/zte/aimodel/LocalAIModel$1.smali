.class Lcom/zte/aimodel/LocalAIModel$1;
.super Ljava/lang/Object;
.source "LocalAIModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/LocalAIModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/LocalAIModel;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/LocalAIModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 76
    const-string p1, "LocalAIModel"

    const-string p2, "Service connected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p1}, Lcom/zte/aimodel/LocalAIModel;->access$000(Lcom/zte/aimodel/LocalAIModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 78
    :try_start_0
    iget-object p2, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p2}, Lcom/zte/aimodel/LocalAIModel;->access$200(Lcom/zte/aimodel/LocalAIModel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->create(Landroid/content/Context;)Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/aimodel/LocalAIModel;->access$102(Lcom/zte/aimodel/LocalAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;

    .line 79
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/LocalAIModel;->access$000(Lcom/zte/aimodel/LocalAIModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 86
    const-string p1, "LocalAIModel"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p1}, Lcom/zte/aimodel/LocalAIModel;->access$000(Lcom/zte/aimodel/LocalAIModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aimodel/LocalAIModel;->access$102(Lcom/zte/aimodel/LocalAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;

    .line 89
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel$1;->this$0:Lcom/zte/aimodel/LocalAIModel;

    invoke-static {p0}, Lcom/zte/aimodel/LocalAIModel;->access$000(Lcom/zte/aimodel/LocalAIModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
