.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
.super Ljava/lang/Object;
.source "ExpandResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandResponseDataBuilder"
.end annotation


# instance fields
.field private algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

.field private binaryDataBase64:[Ljava/lang/String;

.field private imageUrls:[Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public algorithmBaseResp(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    return-object p0
.end method

.method public binaryDataBase64([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;
    .locals 4

    .line 9
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->requestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;-><init>(Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public imageUrls([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    return-object p0
.end method

.method public requestId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpandResponseData.ExpandResponseDataBuilder(requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithmBaseResp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$AlgorithmBaseResp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryDataBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData$ExpandResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
