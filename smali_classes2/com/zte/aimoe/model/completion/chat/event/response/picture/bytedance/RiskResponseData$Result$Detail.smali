.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;
.super Ljava/lang/Object;
.source "RiskResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail$Position;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field private imageId:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ImageId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private libName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LibName"
    .end annotation
.end field

.field private matchedWords:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MatchedWords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private positions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Positions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail$Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 74
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getMatchedWords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getMatchedWords()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getPositions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getPositions()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getLibName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getImageId()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getImageId()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getImageId()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->imageId:Ljava/util/List;

    return-object p0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->libName:Ljava/lang/String;

    return-object p0
.end method

.method public getMatchedWords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->matchedWords:Ljava/util/List;

    return-object p0
.end method

.method public getPositions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail$Position;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->positions:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getMatchedWords()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getPositions()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getLibName()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getDescription()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getImageId()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageId(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->imageId:Ljava/util/List;

    return-void
.end method

.method public setLibName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->libName:Ljava/lang/String;

    return-void
.end method

.method public setMatchedWords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->matchedWords:Ljava/util/List;

    return-void
.end method

.method public setPositions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail$Position;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->positions:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RiskResponseData.Result.Detail(matchedWords="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getMatchedWords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getPositions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", libName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result$Detail;->getImageId()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
