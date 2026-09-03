.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;
.super Ljava/lang/Object;
.source "EmotionEditData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData$EmotionEditDataBuilder;
    }
.end annotation


# instance fields
.field private imageBase64:Ljava/util/List;
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

.field private logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo_info"
    .end annotation
.end field

.field private returnUrl:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "return_url"
    .end annotation
.end field

.field private targetEmotion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_emotion"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageBase64:Ljava/util/List;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageUrls:Ljava/util/List;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->targetEmotion:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->returnUrl:Z

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData$EmotionEditDataBuilder;
    .locals 1

    .line 13
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData$EmotionEditDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData$EmotionEditDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->isReturnUrl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->isReturnUrl()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageBase64()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageBase64()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageUrls()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getTargetEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getTargetEmotion()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p1

    if-nez p0, :cond_a

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_3
    return v2

    :cond_b
    return v0
.end method

.method public getImageBase64()Ljava/util/List;
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
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageBase64:Ljava/util/List;

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
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-object p0
.end method

.method public getTargetEmotion()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->targetEmotion:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->isReturnUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageBase64()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageUrls()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getTargetEmotion()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public isReturnUrl()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->returnUrl:Z

    return p0
.end method

.method public setImageBase64(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageBase64:Ljava/util/List;

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

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public setLogoInfo(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-void
.end method

.method public setReturnUrl(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->returnUrl:Z

    return-void
.end method

.method public setTargetEmotion(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->targetEmotion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmotionEditData(imageBase64="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageBase64()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetEmotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getTargetEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->isReturnUrl()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/EmotionEditData;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

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
