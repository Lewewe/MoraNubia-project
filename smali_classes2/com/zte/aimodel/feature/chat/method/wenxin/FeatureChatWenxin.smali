.class public Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeatureChatWenxin.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;
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
            "Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->emoCodeGetterList:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;)Ljava/util/LinkedList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->emoCodeGetterList:Ljava/util/LinkedList;

    return-object p0
.end method

.method private getModelName(Z)Ljava/lang/String;
    .locals 0

    .line 166
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

    .line 155
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 156
    const-string p1, "total_tokens"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
    .locals 4

    .line 45
    const-string v0, ""

    const-string v1, "FeatureChat"

    .line 46
    iget-object v2, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->emoCodeGetterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 47
    iget-object v2, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->emoCodeGetterList:Ljava/util/LinkedList;

    new-instance v3, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;

    invoke-direct {v3, p0}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;-><init>(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0, p3}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->getModelName(Z)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$1;

    invoke-direct {v2, p0, p4, p2}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$1;-><init>(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;Z)V

    const-string p2, "Mora"

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->getTotalTokens(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 144
    const-string p1, "getTotalTokens Exception "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 141
    const-string p1, "getTotalTokens JSON format error "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-interface {p4, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public clearHistory(Z)V
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->getModelName(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mora"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;->clearHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
