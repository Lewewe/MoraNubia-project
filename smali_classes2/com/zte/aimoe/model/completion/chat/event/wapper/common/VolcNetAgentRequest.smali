.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;,
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;,
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    }
.end annotation


# instance fields
.field private botId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bot_id"
    .end annotation
.end field

.field private cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_config"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id"
    .end annotation
.end field

.field private knowledge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "knowledge"
    .end annotation
.end field

.field private locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location_info"
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private stream:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->botId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->messages:Ljava/util/List;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->stream:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->deviceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->knowledge:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 1

    .line 10
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getStream()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getStream()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getBotId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getMessages()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getUserId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getDeviceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getKnowledge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getKnowledge()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getLocationInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getLocationInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getCardConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getCardConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    move-result-object p1

    if-nez p0, :cond_11

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_7
    return v2

    :cond_12
    return v0
.end method

.method public getBotId()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->botId:Ljava/lang/String;

    return-object p0
.end method

.method public getCardConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getKnowledge()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->knowledge:Ljava/lang/String;

    return-object p0
.end method

.method public getLocationInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    return-object p0
.end method

.method public getMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->messages:Ljava/util/List;

    return-object p0
.end method

.method public getStream()Ljava/lang/Boolean;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->stream:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getStream()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getBotId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getMessages()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getUserId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getDeviceId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getKnowledge()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getLocationInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getCardConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public setBotId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->botId:Ljava/lang/String;

    return-void
.end method

.method public setCardConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setKnowledge(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->knowledge:Ljava/lang/String;

    return-void
.end method

.method public setLocationInfo(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->messages:Ljava/util/List;

    return-void
.end method

.method public setStream(Ljava/lang/Boolean;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->stream:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest(botId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getStream()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", knowledge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getKnowledge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getLocationInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;->getCardConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

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
