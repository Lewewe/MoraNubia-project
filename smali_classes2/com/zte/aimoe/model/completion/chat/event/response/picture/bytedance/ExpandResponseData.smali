.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;
.super Ljava/lang/Object;
.source "ExpandResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;,
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    }
.end annotation


# instance fields
.field private algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "algorithm_base_resp"
    .end annotation
.end field

.field private binaryDataBase64:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binary_data_base64"
    .end annotation
.end field

.field private imageUrls:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_urls"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->binaryDataBase64:[Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->imageUrls:[Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getRequestId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getAlgorithmBaseResp()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getAlgorithmBaseResp()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getBinaryDataBase64()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getBinaryDataBase64()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getImageUrls()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getImageUrls()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getAlgorithmBaseResp()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    return-object p0
.end method

.method public getBinaryDataBase64()[Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->binaryDataBase64:[Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrls()[Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->imageUrls:[Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getRequestId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getAlgorithmBaseResp()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getBinaryDataBase64()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->getImageUrls()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setAlgorithmBaseResp(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    return-void
.end method

.method public setBinaryDataBase64([Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->binaryDataBase64:[Ljava/lang/String;

    return-void
.end method

.method public setImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->imageUrls:[Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;->requestId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
