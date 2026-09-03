.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;
.super Ljava/lang/Object;
.source "EyeClose2OpenData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EyeClose2OpenDataBuilder"
.end annotation


# instance fields
.field private createdAt:I

.field private imageBase64:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData;
    .locals 3

    .line 10
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData;

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->createdAt:I

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageBase64:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createdAt(I)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->createdAt:I

    return-object p0
.end method

.method public imageBase64(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageBase64:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EyeClose2OpenData.EyeClose2OpenDataBuilder(createdAt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->createdAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageBase64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EyeClose2OpenData$EyeClose2OpenDataBuilder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
