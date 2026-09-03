.class public Lcom/zte/nlp/model/NLPResponse;
.super Ljava/lang/Object;
.source "NLPResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/nlp/model/NLPResponse$Result;
    }
.end annotation


# instance fields
.field private transient nlpResult:Ljava/lang/String;

.field private rawText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "raw_text"
    .end annotation
.end field

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/nlp/model/NLPResponse$Result;",
            ">;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/zte/nlp/model/NLPResponse;->results:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse;->results:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/nlp/model/NLPResponse$Result;

    invoke-virtual {p0}, Lcom/zte/nlp/model/NLPResponse$Result;->getDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNlpResult()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse;->nlpResult:Ljava/lang/String;

    return-object p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse;->rawText:Ljava/lang/String;

    return-object p0
.end method

.method public getResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/nlp/model/NLPResponse$Result;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse;->results:Ljava/util/List;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/zte/nlp/model/NLPResponse;->status:I

    return p0
.end method

.method public setNlpResult(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse;->nlpResult:Ljava/lang/String;

    return-void
.end method

.method public setRawText(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse;->rawText:Ljava/lang/String;

    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/nlp/model/NLPResponse$Result;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse;->results:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/zte/nlp/model/NLPResponse;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NLPResponse{rawText=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/nlp/model/NLPResponse;->rawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/nlp/model/NLPResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse;->results:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
