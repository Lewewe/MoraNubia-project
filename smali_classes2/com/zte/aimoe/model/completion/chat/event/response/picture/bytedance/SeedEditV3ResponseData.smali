.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;
.super Ljava/lang/Object;
.source "SeedEditV3ResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    }
.end annotation


# instance fields
.field private binaryDataBase64:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binary_data_base64"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private responseData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_data"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private taskId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->taskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->binaryDataBase64:Ljava/util/List;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->imageUrls:Ljava/util/List;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->responseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->status:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->message:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData$SeedEditV3ResponseDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getTaskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getBinaryDataBase64()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getBinaryDataBase64()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getImageUrls()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getResponseData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getResponseData()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_d

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_5
    return v2

    :cond_e
    return v0
.end method

.method public getBinaryDataBase64()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->binaryDataBase64:Ljava/util/List;

    return-object p0
.end method

.method public getImageUrls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->responseData:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getTaskId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getBinaryDataBase64()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getImageUrls()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getResponseData()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getStatus()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->getMessage()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setBinaryDataBase64(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->binaryDataBase64:Ljava/util/List;

    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->message:Ljava/lang/String;

    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->responseData:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;->taskId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
