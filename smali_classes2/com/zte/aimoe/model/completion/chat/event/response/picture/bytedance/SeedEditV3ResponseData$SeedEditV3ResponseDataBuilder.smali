.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
.super Ljava/lang/Object;
.source "SeedEditV3ResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeedEditV3ResponseDataBuilder"
.end annotation


# instance fields
.field private binaryDataBase64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private responseData:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryDataBase64(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;
    .locals 8

    .line 11
    new-instance v7, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->taskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->imageUrls:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->responseData:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->status:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->message:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public imageUrls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public responseData(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->responseData:Ljava/lang/String;

    return-object p0
.end method

.method public status(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public taskId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeedEditV3ResponseData.SeedEditV3ResponseDataBuilder(taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryDataBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->responseData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
