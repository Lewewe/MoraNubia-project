.class public Lcom/zte/aimodel/ModelParser/DualConfig;
.super Ljava/lang/Object;
.source "DualConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualConfig"


# instance fields
.field private audioInBufferSize:I

.field private audioOutBufferSize:I

.field private inChannel:I

.field private inFormat:I

.field private inSampleRate:I

.field private models:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private outChannel:I

.field private outFormat:I

.field private outSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    return-void
.end method

.method public static buildConfigString(IIIJIIIJLjava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJIIIJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 384
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 387
    const-string v1, "SampleRate"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    const-string p0, "Channel"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string p0, "Format"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string p0, "AudioInBufferSize"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 393
    const-string p0, "OutSampleRate"

    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string p0, "OutChannel"

    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string p0, "OutFormat"

    invoke-virtual {v0, p0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    const-string p0, "AudioOutBufferSize"

    invoke-virtual {v0, p0, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p10, :cond_1

    .line 398
    invoke-interface {p10}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 399
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 400
    invoke-interface {p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance p4, Lorg/json/JSONObject;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 403
    :cond_0
    const-string p1, "models"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 p0, 0x2

    .line 405
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 407
    sget-object p1, Lcom/zte/aimodel/ModelParser/DualConfig;->TAG:Ljava/lang/String;

    const-string p2, "Exception in buildConfigString: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const-string p0, ""

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/zte/aimodel/ModelParser/DualConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/zte/aimodel/ModelParser/DualConfig;

    invoke-direct {v0}, Lcom/zte/aimodel/ModelParser/DualConfig;-><init>()V

    .line 81
    invoke-virtual {v0, p0}, Lcom/zte/aimodel/ModelParser/DualConfig;->parseJsonConfig(Ljava/lang/String;)V

    return-object v0
.end method

.method private getBytesPerSample(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 109
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 110
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 111
    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/zte/aimodel/ModelParser/DualConfig;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 113
    check-cast v2, Lorg/json/JSONArray;

    invoke-direct {p0, v2}, Lcom/zte/aimodel/ModelParser/DualConfig;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 94
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 95
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/zte/aimodel/ModelParser/DualConfig;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 97
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/zte/aimodel/ModelParser/DualConfig;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 143
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/zte/aimodel/ModelParser/DualConfig;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 144
    :cond_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 145
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/zte/aimodel/ModelParser/DualConfig;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 127
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/zte/aimodel/ModelParser/DualConfig;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 129
    :cond_0
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/zte/aimodel/ModelParser/DualConfig;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public calculateTotalMemorySize()J
    .locals 2

    .line 415
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    add-int/lit8 v0, v0, 0x78

    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    add-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioInBufferOffset()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public getAudioInBufferSize()I
    .locals 0

    .line 276
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    return p0
.end method

.method public getAudioOutBufferOffset()J
    .locals 2

    .line 425
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    add-int/lit8 p0, p0, 0x78

    int-to-long v0, p0

    return-wide v0
.end method

.method public getAudioOutBufferSize()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    return p0
.end method

.method public getBooleanValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/zte/aimodel/ModelParser/DualConfig;->getModelConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 353
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 354
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDoubleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/zte/aimodel/ModelParser/DualConfig;->getModelConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 369
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_0

    .line 370
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 371
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 372
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInChannel()I
    .locals 0

    .line 260
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    return p0
.end method

.method public getInFormat()I
    .locals 0

    .line 268
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    return p0
.end method

.method public getInSampleRate()I
    .locals 0

    .line 252
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    return p0
.end method

.method public getInputBufferDurationMs()J
    .locals 5

    .line 468
    invoke-virtual {p0}, Lcom/zte/aimodel/ModelParser/DualConfig;->getInputBytesPerSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 470
    :cond_0
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public getInputBytesPerSecond()J
    .locals 5

    .line 441
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    invoke-direct {p0, v0}, Lcom/zte/aimodel/ModelParser/DualConfig;->getBytesPerSample(I)I

    move-result v0

    .line 443
    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    int-to-long v1, v1

    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    int-to-long v3, p0

    mul-long/2addr v1, v3

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIntValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/zte/aimodel/ModelParser/DualConfig;->getModelConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 343
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 344
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 345
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 346
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/ModelParser/DualConfig;->getModelConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 245
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getModels()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 317
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    return-object p0
.end method

.method public getOutChannel()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    return p0
.end method

.method public getOutFormat()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    return p0
.end method

.method public getOutSampleRate()I
    .locals 0

    .line 285
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    return p0
.end method

.method public getOutputBufferDurationMs()J
    .locals 5

    .line 474
    invoke-virtual {p0}, Lcom/zte/aimodel/ModelParser/DualConfig;->getOutputBytesPerSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 476
    :cond_0
    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public getOutputBytesPerSecond()J
    .locals 5

    .line 448
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    invoke-direct {p0, v0}, Lcom/zte/aimodel/ModelParser/DualConfig;->getBytesPerSample(I)I

    move-result v0

    .line 450
    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    int-to-long v1, v1

    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    int-to-long v3, p0

    mul-long/2addr v1, v3

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/zte/aimodel/ModelParser/DualConfig;->getModelConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 361
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 362
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasModel(Ljava/lang/String;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAudioFormatMatched()Z
    .locals 2

    .line 436
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidConfig()Z
    .locals 1

    .line 430
    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseJsonConfig(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "models"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p1, "SampleRate"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    .line 49
    const-string p1, "Channel"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    .line 50
    const-string p1, "Format"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    .line 51
    const-string p1, "AudioInBufferSize"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    .line 54
    const-string p1, "OutSampleRate"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    .line 55
    const-string p1, "OutChannel"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    .line 56
    const-string p1, "OutFormat"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    .line 57
    const-string p1, "AudioOutBufferSize"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    .line 60
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/zte/aimodel/ModelParser/DualConfig;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 73
    sget-object p1, Lcom/zte/aimodel/ModelParser/DualConfig;->TAG:Ljava/lang/String;

    const-string v0, "Json exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance p1, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse JSON config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeModel(Ljava/lang/String;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioInBufferSize(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    return-void
.end method

.method public setAudioOutBufferSize(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    return-void
.end method

.method public setInChannel(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    return-void
.end method

.method public setInFormat(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    return-void
.end method

.method public setInSampleRate(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    return-void
.end method

.method public setModelConfig(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setModelConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3

    .line 226
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public setModels(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    return-void
.end method

.method public setOutChannel(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    return-void
.end method

.method public setOutFormat(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    return-void
.end method

.method public setOutSampleRate(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 155
    invoke-virtual {p0, v0}, Lcom/zte/aimodel/ModelParser/DualConfig;->toJsonString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJsonString(I)Ljava/lang/String;
    .locals 5

    .line 160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string v1, "SampleRate"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v1, "Channel"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v1, "Format"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v1, "AudioInBufferSize"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string v1, "OutSampleRate"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v1, "OutChannel"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string v1, "OutFormat"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v1, "AudioOutBufferSize"

    iget v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    iget-object v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/zte/aimodel/ModelParser/DualConfig;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 179
    :cond_0
    const-string p0, "models"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    const-string p0, ""

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DualConfig{inSampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->inFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioInBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioInBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->outFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioOutBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->audioOutBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", models="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimodel/ModelParser/DualConfig;->models:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
