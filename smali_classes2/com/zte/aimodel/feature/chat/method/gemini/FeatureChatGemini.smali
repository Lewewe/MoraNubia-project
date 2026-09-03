.class public Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeatureChatGemini.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;


# static fields
.field private static final DEFAULT_TIME_DELAY_CN:I = 0x1e

.field private static final DEFAULT_TIME_DELAY_EN:I = 0xf

.field private static final TAG:Ljava/lang/String; = "FeatureChat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->extractAndRemoveEmoNumbers(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private createJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 163
    const-string p0, "image"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 167
    :try_start_0
    const-string v1, "After seeing the following image, identify the focus of the scene and center the conversation on it. Chat with me in your own tone, keep it under 80 words, do not repeat my description, and do not mention the word \"look\".\n"

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "type"

    if-eqz v2, :cond_0

    .line 169
    :try_start_1
    const-string v2, "p2t"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 173
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_1

    .line 177
    :try_start_3
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-object p1, v1

    goto :goto_0

    .line 181
    :cond_0
    :try_start_4
    const-string p0, "t2t"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :catch_1
    :cond_1
    :goto_0
    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private extractAndRemoveEmoNumbers(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    const-string p0, "(\\{?)emo:(\\{?)\\s*(\\d+)\\s*(\\}?)\\}?"

    .line 232
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 233
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :catch_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 242
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getModelName(Z)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->of(Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getModelName(Z)Ljava/lang/String;

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

    .line 156
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 157
    const-string p1, "total_tokens"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static getTypingDelay(Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 194
    sget-object v0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1e

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0xf

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
    .locals 3

    .line 52
    const-string v0, ""

    const-string v1, "FeatureChat"

    .line 53
    invoke-direct {p0, p3}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->getModelName(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->createJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;

    invoke-direct {v2, p0, p2, p4}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;-><init>(Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;ZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)V

    const-string p2, "Mora"

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->requestNonStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p1

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->getTotalTokens(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 145
    const-string p1, "getTotalTokens Exception "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 142
    const-string p1, "getTotalTokens JSON format error "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public clearHistory(Z)V
    .locals 1

    .line 218
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->getModelName(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mora"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->clearHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
