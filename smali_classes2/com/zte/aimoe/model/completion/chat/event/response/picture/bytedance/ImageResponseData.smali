.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;
.super Ljava/lang/Object;
.source "ImageResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
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

.field private returnUrl:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "return_url"
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->returnUrl:Z

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->imageUrls:Ljava/util/List;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->binaryDataBase64:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->isReturnUrl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->isReturnUrl()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getImageUrls()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getBinaryDataBase64()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getBinaryDataBase64()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_6

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_1
    return v2

    :cond_7
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

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->binaryDataBase64:Ljava/util/List;

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

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->isReturnUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getImageUrls()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->getBinaryDataBase64()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public isReturnUrl()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->returnUrl:Z

    return p0
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
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->binaryDataBase64:Ljava/util/List;

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
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public setReturnUrl(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;->returnUrl:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
