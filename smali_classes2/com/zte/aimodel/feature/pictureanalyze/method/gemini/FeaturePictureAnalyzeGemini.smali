.class public Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeaturePictureAnalyzeGemini.java"

# interfaces
.implements Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeaturePictureAnalyzeGemini"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    return-void
.end method

.method private analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 5

    .line 42
    const-string v0, "FeaturePictureAnalyzeGemini"

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini$1;-><init>(Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)V

    invoke-virtual {p0, v1, p1, v3, v4}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p1

    .line 82
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->getTotalTokens(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    const-string p1, "getTotalTokens Exception "

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 84
    const-string p1, "getTotalTokens JSON format error "

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-interface {p3, v2}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private varargs createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->getPromptForFeaturePictureAnalyze(Z)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_1

    .line 101
    :try_start_0
    array-length p2, p3

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 102
    aget-object p2, p3, p2

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 104
    const-string p3, "image"

    invoke-virtual {p0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 108
    const-string p2, "message"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->of(Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->getModelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTotalTokens(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 130
    const-string p1, "total_tokens"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public analyze(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 2

    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method

.method public analyze(Ljava/lang/String;[Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p3, p2}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->createJson(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;->analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method
