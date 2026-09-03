.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$3200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$3300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$3400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;->this$1:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$3400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
