.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;
.super Landroid/os/Handler;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 83
    const-string v0, "LocalAIModelInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    .line 133
    iget-object v0, p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;->this$0:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    iget-object v1, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;->modelName:Ljava/lang/String;

    iget-object v0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->getAIRequestMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    iput-object p0, p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    .line 139
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    .line 149
    iget-object v0, p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;

    .line 150
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$3;-><init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    .line 113
    iget-object v0, p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    .line 114
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$2;-><init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 88
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    .line 89
    iget-object v0, p1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    .line 91
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1$1;-><init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
