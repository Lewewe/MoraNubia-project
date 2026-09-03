.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;
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

.field final synthetic val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

.field final synthetic val$tokenParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V
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

    .line 150
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$tokenParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;

    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->this$1:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    iget-object v0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$tokenParam:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;

    iget-object v1, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->queryRemainTokenInf(Ljava/lang/String;)I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;->val$request:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 159
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

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
