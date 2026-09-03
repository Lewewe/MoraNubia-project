.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$2900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$3000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$3100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$3100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
