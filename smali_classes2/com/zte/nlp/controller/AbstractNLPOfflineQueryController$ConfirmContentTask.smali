.class Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;
.super Lcom/zte/nlp/controller/StepTask;
.source "AbstractNLPOfflineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmContentTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;


# direct methods
.method public constructor <init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcom/zte/nlp/controller/StepTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 91
    invoke-direct {p0, p2}, Lcom/zte/nlp/controller/StepTask;-><init>(Lcom/zte/nlp/controller/StepTask;)V

    return-void
.end method

.method private checkKeywords(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_3

    .line 140
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    return v2

    :cond_3
    return v0
.end method

.method private judgeIntent()Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {v0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$300(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$500()Lcom/zte/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zte/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->checkKeywords(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 126
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->checkKeywords(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    .line 129
    const-string p0, "positive"

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    if-nez v1, :cond_1

    .line 131
    const-string p0, "negative"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected query()Lcom/zte/nlp/model/NLPResponse;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {v0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$200(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->judgeIntent()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Lcom/zte/nlp/model/NLPResponse;

    invoke-direct {v1}, Lcom/zte/nlp/model/NLPResponse;-><init>()V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {v3}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$300(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<confirm_content>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {v3}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$200(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/nlp/model/NLPResponse;->setRawText(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 107
    invoke-virtual {v1, v2}, Lcom/zte/nlp/model/NLPResponse;->setStatus(I)V

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zte/nlp/model/NLPResponse;->setResults(Ljava/util/List;)V

    .line 109
    new-instance v2, Lcom/zte/nlp/model/NLPResponse$Result;

    invoke-direct {v2}, Lcom/zte/nlp/model/NLPResponse$Result;-><init>()V

    const/4 v3, 0x1

    .line 110
    invoke-virtual {v2, v3}, Lcom/zte/nlp/model/NLPResponse$Result;->setScore(I)V

    .line 111
    sget-object v3, Lcom/zte/nlp/util/Domain;->CommonConfirm:Lcom/zte/nlp/util/Domain;

    invoke-virtual {v3}, Lcom/zte/nlp/util/Domain;->getDomainKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/nlp/model/NLPResponse$Result;->setDomain(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v0}, Lcom/zte/nlp/model/NLPResponse$Result;->setIntent(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/zte/nlp/model/NLPResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {p0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$400(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/zte/nlp/model/NLPResponse;->setNlpResult(Ljava/lang/String;)V

    return-object v1
.end method
