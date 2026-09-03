.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

.field final synthetic val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

.field final synthetic val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "performString ret:"

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iget-object v2, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iget-object v3, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->modelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iget-object v4, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->inputData:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iget-object v5, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->callback:Lcom/zte/aimodel/IResponseCallback;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iget-object v6, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$param:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    iget-boolean v7, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->stream:Z

    invoke-virtual/range {v2 .. v7}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->performString(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v2, "LocalAIModelInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    iput-object v1, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
