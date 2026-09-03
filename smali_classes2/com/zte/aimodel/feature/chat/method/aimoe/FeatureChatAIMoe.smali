.class public Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeatureChatAIMoe.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FeatureChat"


# instance fields
.field private emoCodeGetterList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->emoCodeGetterList:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;)Ljava/util/LinkedList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->emoCodeGetterList:Ljava/util/LinkedList;

    return-object p0
.end method

.method private createJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 150
    const-string p0, "disposition"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_0
    const-string v1, "character"

    const-string v2, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mora"

    goto :goto_0

    :cond_0
    const-string v2, "Demi"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "d001"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isZhAreaLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "zh"

    goto :goto_1

    :cond_1
    const-string v1, "en"

    :goto_1
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string p0, "emotion"

    const-string v1, "enable"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string p0, "user_id"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string p0, "location"

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string p0, "location_info"

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->getLocationInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string p0, "wakeup_word"

    invoke-static {}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getInstance()Lcom/zte/wakeup/SnapDragonWakeupAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getCurrentWakeupWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private getModelName(Z)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->of(Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getModelName(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
    .locals 5

    .line 52
    const-string v0, ""

    const-string v1, "FeatureChat"

    .line 53
    iget-object v2, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->emoCodeGetterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 54
    iget-object v2, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->emoCodeGetterList:Ljava/util/LinkedList;

    new-instance v3, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;-><init>(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$1;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p3}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->getModelName(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->createJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$1;

    invoke-direct {v2, p0, p2, p4}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$1;-><init>(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;ZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)V

    const-string p2, "Mora"

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p1

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 136
    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->of(Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p0

    const-string p2, "billing_name"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->setAIModelConstForPayment(Ljava/lang/String;)V

    .line 137
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

    .line 142
    const-string p1, "getTotalTokens Exception "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 139
    const-string p1, "getTotalTokens JSON format error "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public clearHistory(Z)V
    .locals 1

    .line 179
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->getModelName(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mora"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;->clearHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
