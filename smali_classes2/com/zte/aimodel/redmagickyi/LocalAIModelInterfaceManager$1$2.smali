.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;
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

.field final synthetic val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

.field final synthetic val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V
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

    .line 114
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iget-object v1, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iget-object v2, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->modelName:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iget-object v3, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->inputData:[B

    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iget-object v4, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->callback:Lcom/zte/aimodel/IResponseCallback;

    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iget-object v5, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$byteParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    iget-boolean v6, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->stream:Z

    invoke-virtual/range {v1 .. v6}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->performByte(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    iput-object v0, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 123
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

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
