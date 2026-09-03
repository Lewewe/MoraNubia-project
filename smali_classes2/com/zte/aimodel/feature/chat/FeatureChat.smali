.class public Lcom/zte/aimodel/feature/chat/FeatureChat;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeatureChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;
    }
.end annotation


# static fields
.field public static final MAX_INPUT_LENGTH:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "FeatureChat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    return-void
.end method

.method private getImpl(Lcom/zte/aimodel/feature/chat/ChatModel;)Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;
    .locals 0

    .line 41
    invoke-virtual {p1}, Lcom/zte/aimodel/feature/chat/ChatModel;->getChatImpl()Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/FeatureChat;->getFeatureGetter()Lcom/zte/aimodel/feature/IFeature$IGetter;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;->setFeatureGetter(Lcom/zte/aimodel/feature/IFeature$IGetter;)V

    return-object p1
.end method

.method private trimInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    const-wide/32 v2, 0x32000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x400

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
    .locals 1

    .line 21
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat;->getImpl(Lcom/zte/aimodel/feature/chat/ChatModel;)Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/FeatureChat;->trimInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;->chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I

    move-result p0

    return p0
.end method

.method public clearHistory(Z)V
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/FeatureChat;->getFeatureGetter()Lcom/zte/aimodel/feature/IFeature$IGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/feature/IFeature$IGetter;->getAIModelSource()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/feature/chat/FeatureChat;->getImpl(Lcom/zte/aimodel/feature/chat/ChatModel;)Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;->clearHistory(Z)V

    :goto_0
    return-void
.end method
