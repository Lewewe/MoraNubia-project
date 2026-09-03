.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;
.super Ljava/lang/Object;
.source "Card.java"


# instance fields
.field private cardType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_type"
    .end annotation
.end field

.field private imageCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_card"
    .end annotation
.end field

.field private videoCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_card"
    .end annotation
.end field

.field private weatherCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_card"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getCardType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getVideoCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getVideoCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getWeatherCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getWeatherCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getImageCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getImageCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

    move-result-object p1

    if-nez p0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public getImageCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->imageCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

    return-object p0
.end method

.method public getVideoCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->videoCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

    return-object p0
.end method

.method public getWeatherCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->weatherCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getCardType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getVideoCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getWeatherCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getImageCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setImageCard(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->imageCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

    return-void
.end method

.method public setVideoCard(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->videoCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

    return-void
.end method

.method public setWeatherCard(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->weatherCard:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card(cardType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getVideoCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/VideoCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getWeatherCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/Card;->getImageCard()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/ImageCard;

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
