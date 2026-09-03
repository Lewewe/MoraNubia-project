.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
.super Ljava/lang/Object;
.source "SplitResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitResponseDataBuilder"
.end annotation


# instance fields
.field private algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;

.field private bbox:[[I

.field private binaryDataBase64:[Ljava/lang/String;

.field private contoursPoint:[[[[I

.field private imageUrls:[Ljava/lang/String;

.field private oriHeight:[I

.field private oriWidth:[I

.field private requestId:Ljava/lang/String;

.field private segScore:[D

.field private shadow:[Ljava/lang/Object;

.field private shadowPos:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public algorithmBaseResp(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;

    return-object p0
.end method

.method public bbox([[I)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->bbox:[[I

    return-object p0
.end method

.method public binaryDataBase64([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;
    .locals 13

    .line 9
    new-instance v12, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->requestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->bbox:[[I

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->contoursPoint:[[[[I

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriHeight:[I

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriWidth:[I

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->segScore:[D

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadow:[Ljava/lang/Object;

    iget-object v11, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadowPos:[Ljava/lang/Object;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;-><init>(Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;[Ljava/lang/String;[Ljava/lang/String;[[I[[[[I[I[I[D[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v12
.end method

.method public contoursPoint([[[[I)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->contoursPoint:[[[[I

    return-object p0
.end method

.method public imageUrls([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    return-object p0
.end method

.method public oriHeight([I)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriHeight:[I

    return-object p0
.end method

.method public oriWidth([I)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriWidth:[I

    return-object p0
.end method

.method public requestId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public segScore([D)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->segScore:[D

    return-object p0
.end method

.method public shadow([Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadow:[Ljava/lang/Object;

    return-object p0
.end method

.method public shadowPos([Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadowPos:[Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitResponseData.SplitResponseDataBuilder(requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithmBaseResp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->algorithmBaseResp:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$AlgorithmBaseResp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryDataBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->binaryDataBase64:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->imageUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->bbox:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contoursPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->contoursPoint:[[[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oriHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriHeight:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oriWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->oriWidth:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->segScore:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadow:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadowPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData$SplitResponseDataBuilder;->shadowPos:[Ljava/lang/Object;

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
