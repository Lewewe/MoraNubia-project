.class Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;
.super Ljava/lang/Object;
.source "AIMoeTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManager"
.end annotation


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private hisFile:Ljava/io/File;

.field private lock:Ljava/lang/Object;

.field private nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private savingRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;


# direct methods
.method private constructor <init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    .line 300
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->gson:Lcom/google/gson/Gson;

    .line 301
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    .line 309
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;

    invoke-direct {p1, p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$1;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->savingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/lang/Object;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/io/File;
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHisFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)Lcom/google/gson/Gson;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private getHisFile()Ljava/io/File;
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->hisFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;

    invoke-virtual {v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getModelName()Ljava/lang/String;

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

    iput-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->hisFile:Ljava/io/File;

    .line 326
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->hisFile:Ljava/io/File;

    return-object p0
.end method

.method private getHisFileContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHisFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveContent()V
    .locals 2

    .line 304
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addHistory(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->saveContent()V

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearHistory()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 363
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->saveContent()V

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHistory()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 333
    :try_start_1
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHisFileContent()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/Vector;

    iget-object v4, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->gson:Lcom/google/gson/Gson;

    new-instance v5, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$2;

    invoke-direct {v5, p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$2;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)V

    invoke-virtual {v5}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->clearHistory()V

    .line 343
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->nonStreamJsonArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    .line 343
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getHistoryLength()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 385
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public limitHistory()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->saveContent()V

    .line 357
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeHistory(I)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->saveContent()V

    .line 379
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
