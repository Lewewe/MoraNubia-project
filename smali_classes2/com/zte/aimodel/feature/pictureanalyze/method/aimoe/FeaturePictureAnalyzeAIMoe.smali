.class public Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeaturePictureAnalyzeAIMoe.java"

# interfaces
.implements Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeaturePictureAnalyze"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    return-void
.end method

.method private analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 5

    .line 49
    const-string v0, "FeaturePictureAnalyze"

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe$1;-><init>(Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)V

    invoke-virtual {p0, v1, p1, v3, v4}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 90
    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->of(Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p0

    const-string p2, "billing_name"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->setAIModelConstForPayment(Ljava/lang/String;)V

    .line 91
    const-string p0, "total_tokens"

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 96
    const-string p1, "getTotalTokens Exception "

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 93
    const-string p1, "getTotalTokens JSON format error "

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private varargs createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 104
    const-string p0, "disposition"

    const-string v0, "text"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->getPromptForFeaturePictureAnalyze(Z)Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 110
    :try_start_0
    array-length v2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "type"

    if-ge v3, v2, :cond_1

    :try_start_1
    aget-object v5, p3, v3

    .line 111
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v7, "image_url"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const-string v7, "url"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v5, "imageUrl"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    invoke-virtual {p3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    .line 127
    :goto_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_2
    const-string p3, "character"

    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Mora"

    goto :goto_2

    :cond_2
    const-string v0, "Demi"

    :goto_2
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string p3, "d001"

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isZhAreaLanguage()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "zh"

    goto :goto_3

    :cond_3
    const-string p3, "en"

    :goto_3
    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string p0, "emotion"

    const-string p3, "disable"

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string p0, "user_id"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string p0, "location"

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->getLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string p0, "location_info"

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->getLocationInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string p0, "wakeup_word"

    invoke-static {}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getInstance()Lcom/zte/wakeup/SnapDragonWakeupAction;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getCurrentWakeupWords()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string p0, "message"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v1
.end method

.method private getModelName()Ljava/lang/String;
    .locals 0

    .line 151
    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->of(Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->getModelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public analyze(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 2

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method

.method public analyze(Ljava/lang/String;[Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p3, p2}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;->analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method
