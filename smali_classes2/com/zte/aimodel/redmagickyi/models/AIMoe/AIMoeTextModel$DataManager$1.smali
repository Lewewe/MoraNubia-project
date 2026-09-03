.class Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;
.super Ljava/lang/Object;
.source "AIMoeTextModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->access$300(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->access$400(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->access$500(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->access$600(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Lcom/google/gson/Gson;

    move-result-object v2

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->access$500(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
