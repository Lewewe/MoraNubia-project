.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigManager"
.end annotation


# instance fields
.field private final KEY_LANGUAGE:Ljava/lang/String;

.field private configFile:Ljava/io/File;

.field private configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONObject;",
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

    .line 540
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const-string p1, "language"

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->KEY_LANGUAGE:Ljava/lang/String;

    .line 542
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    .line 544
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    .line 552
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;

    invoke-direct {p1, p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager$1;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->savingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->extractAndRemoveLanguage(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/lang/Object;
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/io/File;
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getConfigFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)V
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->clearConfig()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/lang/String;
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clearConfig()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 589
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->saveContent()V

    .line 590
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private extractAndRemoveLanguage(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 620
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 627
    :cond_0
    const-string v0, "(?:\\*\\*)?\\{?lan:(?:\\{([^{}]*)\\}|([^{}]*))\\}?(?:\\*\\*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 634
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    .line 639
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 643
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 644
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getConfig()Lorg/json/JSONObject;
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 576
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 579
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->clearConfig()V

    .line 582
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configJsonObject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    :catchall_0
    move-exception p0

    .line 582
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getConfigFile()Ljava/io/File;
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-virtual {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/utils/CacheFile;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configFile:Ljava/io/File;

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->configFile:Ljava/io/File;

    return-object p0
.end method

.method private getContent()Ljava/lang/String;
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getConfigFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getConfig()Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :try_start_1
    const-string v1, "language"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    .line 608
    :catch_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 610
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private saveContent()V
    .locals 2

    .line 547
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->savingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->saveContent()V

    .line 599
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
