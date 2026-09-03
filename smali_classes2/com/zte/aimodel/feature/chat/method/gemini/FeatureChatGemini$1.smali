.class Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;
.super Lcom/zte/aimodel/IResponseCallback$Stub;
.source "FeatureChatGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasPrintDelayMessage:Z

.field private isFirstLine:Z

.field private pair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;

.field final synthetic val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

.field final synthetic val$flowOutput:Z


# direct methods
.method constructor <init>(Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;ZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->this$0:Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;

    iput-boolean p2, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$flowOutput:Z

    iput-object p3, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/IResponseCallback$Stub;-><init>()V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->isFirstLine:Z

    return-void
.end method

.method private getEmoCode()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->pair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->pair:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->this$0:Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;

    invoke-static {v0, p1}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->access$000(Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->pair:Landroid/util/Pair;

    .line 61
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_3

    .line 63
    iget-boolean v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->isFirstLine:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "^\\s+"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iput-boolean v1, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->isFirstLine:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 70
    const-string v0, "\\s+$"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_1
    const-string v0, "* **"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v0, "** *"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v0, "**"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 76
    const-string v0, "###"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string v0, "\\~"

    const-string v3, "~"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string v0, " {\u56de\u590d"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string v0, "{\u56de\u590d"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "\u56de\u590d} "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string v0, "\u56de\u590d}"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u56de\u590d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_2
    const-string v0, " {"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v0, "{"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v0, "} "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 90
    const-string v0, "}"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 91
    const-string v0, "[cite: null]"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_3
    iget-boolean v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$flowOutput:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_8

    add-int/lit8 v4, v0, 0x1

    .line 96
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v0, v6, :cond_4

    if-eqz p2, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result v6

    invoke-interface {v0, v5, v6, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    .line 101
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result v5

    invoke-interface {v0, v2, v5, v3}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_2

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result v6

    invoke-interface {v0, v5, v6, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_6

    return v3

    .line 108
    :cond_6
    invoke-static {p1}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->findBestMatcherLanguage(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->getTypingDelay(Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;)J

    move-result-wide v5

    .line 110
    iget-boolean v7, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->hasPrintDelayMessage:Z

    if-nez v7, :cond_7

    .line 111
    iput-boolean v3, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->hasPrintDelayMessage:Z

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "typing delayed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FeatureChat"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_7
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    move v0, v4

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    if-eqz p2, :cond_a

    .line 120
    iget-object p2, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result v0

    invoke-interface {p2, p1, v0, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    .line 121
    iget-object p1, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result p0

    invoke-interface {p1, v2, p0, v3}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 123
    :cond_a
    iget-object p2, p0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$1;->getEmoCode()I

    move-result p0

    invoke-interface {p2, p1, p0, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method
