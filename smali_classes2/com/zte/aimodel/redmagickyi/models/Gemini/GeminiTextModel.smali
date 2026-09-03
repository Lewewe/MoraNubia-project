.class public Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;
.super Lcom/zte/aimodel/redmagickyi/models/IModel;
.source "GeminiTextModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;
    }
.end annotation


# instance fields
.field private configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

.field private historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

.field private image2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;

.field private final lock:Ljava/lang/Object;

.field private text2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/IModel;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    .line 49
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-direct {p1, p0, v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->lock:Ljava/lang/Object;

    .line 52
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;

    invoke-direct {p1, p0, v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->text2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;

    .line 53
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;

    invoke-direct {p1, p0, v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->image2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;

    return-void
.end method

.method static synthetic access$1600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 12

    const-string v0, "getResponse result "

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    :try_start_1
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->getLanguage()Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    move-result-object v4

    .line 80
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v6, "t2t"

    .line 84
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string p1, "type"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    const-string p1, "type"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_0
    const-string p1, "image"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    .line 91
    const-string p1, "image"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v8

    .line 93
    :goto_0
    const-string v9, "message"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    const-string v8, "message"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    :cond_2
    iget-object v7, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 98
    :try_start_2
    iget-object v9, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v9}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V

    .line 99
    iget-object v9, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    const-string v10, "user"

    invoke-static {v9, v10, v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v8, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 104
    const-string v8, "prompt"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptMora_T2T:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v9, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptMora_P2T:Ljava/lang/String;

    :goto_1
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 105
    :cond_4
    const-string v8, "demi"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 106
    const-string v8, "prompt"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptDemi_T2T:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v9, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptDemi_P2T:Ljava/lang/String;

    :goto_2
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_6
    :goto_3
    const-string v8, "p2t"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 111
    iget-object v8, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 112
    :try_start_4
    iget-object v9, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {v9}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)Ljava/lang/String;

    move-result-object v9

    .line 113
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    :try_start_5
    const-string v8, "message"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->messagePrefix_P2T:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v9

    :goto_4
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 113
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    .line 116
    :cond_8
    const-string v8, "message"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->messagePrefix_T2T:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 122
    iget-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->text2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/HeaderCreator;->get()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->access$1000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 125
    :cond_9
    iget-object v4, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->image2Text:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/HeaderCreator;->get()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v4, v5, p1, v7}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->access$1100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :goto_6
    iget-object v4, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {v4, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$1200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 128
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v5, v2}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 129
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v7, "\\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 130
    iget-object v7, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->lock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 132
    :try_start_8
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    const-string v7, "assistant"

    invoke-static {v0, v7, v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "t2t"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$1300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;Ljava/lang/String;)V

    .line 137
    :cond_a
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 150
    :try_start_9
    const-string p1, "total_tokens"

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catch_0
    move-exception p1

    .line 152
    :try_start_a
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception v0

    .line 137
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_2
    move-exception p1

    .line 100
    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_1
    move-exception p1

    .line 139
    :try_start_f
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->TAG:Ljava/lang/String;

    const-string v4, "getResponse error "

    invoke-static {v0, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$1400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v0, v4}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$1500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;I)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 144
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zte/aimodel/IResponseCallback;->onFailure(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_8

    :catch_2
    move-exception p1

    .line 146
    :try_start_11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 150
    :goto_8
    :try_start_12
    const-string p1, "total_tokens"

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_9

    :catch_3
    move-exception p1

    .line 152
    :try_start_13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    monitor-exit p0

    return-object p1

    .line 150
    :catchall_3
    :try_start_14
    const-string p1, "total_tokens"

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_a

    :catch_4
    move-exception p1

    .line 152
    :try_start_15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    monitor-exit p0

    return-object p1

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->historyManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)V

    .line 71
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->configManager:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;

    invoke-static {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;->access$500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$ConfigManager;)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 62
    const-string p0, "null callback"

    return-object p0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
