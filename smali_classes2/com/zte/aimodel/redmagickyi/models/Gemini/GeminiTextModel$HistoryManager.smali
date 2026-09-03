.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryManager"
.end annotation


# instance fields
.field private historyFile:Ljava/io/File;

.field private historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private savingRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;


# direct methods
.method private constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    .line 436
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    .line 444
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;

    invoke-direct {p1, p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager$1;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->savingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)I
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistoryLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;I)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->removeHistory(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/io/File;
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistoryFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->clearHistory()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->limitHistory()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->addHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Lorg/json/JSONArray;
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private addHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 507
    const-string v2, "role"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string p1, "content"

    invoke-direct {p0, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->trimContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 510
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->saveContent()V

    .line 511
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearHistory()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 500
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->saveContent()V

    .line 501
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getHistory()Lorg/json/JSONArray;
    .locals 6

    .line 465
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 468
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistoryContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 470
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 471
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 472
    const-string v4, "content"

    const-string v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->trimContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :catch_0
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 477
    :catch_1
    :try_start_4
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->clearHistory()V

    .line 480
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    :catchall_0
    move-exception p0

    .line 480
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method private getHistoryContent()Ljava/lang/String;
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistoryFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHistoryFile()Ljava/io/File;
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-virtual {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/utils/CacheFile;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "his_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyFile:Ljava/io/File;

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->historyFile:Ljava/io/File;

    return-object p0
.end method

.method private getHistoryLength()I
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private limitHistory()V
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 491
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->saveContent()V

    .line 494
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeHistory(I)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->getHistory()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->saveContent()V

    .line 519
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private saveContent()V
    .locals 2

    .line 439
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private trimContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 532
    const-string p0, "!"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
