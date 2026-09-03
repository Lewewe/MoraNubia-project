.class public Lcom/zte/nlp/model/NLPResponse$Result;
.super Ljava/lang/Object;
.source "NLPResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/model/NLPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private contentJson:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentJson()Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse$Result;->contentJson:Ljava/lang/Object;

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse$Result;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse$Result;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public getScore()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/zte/nlp/model/NLPResponse$Result;->score:I

    return p0
.end method

.method public setContentJson(Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->contentJson:Ljava/lang/Object;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->domain:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->intent:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->score:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{score="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', intent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/nlp/model/NLPResponse$Result;->intent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', contentJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/nlp/model/NLPResponse$Result;->contentJson:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
