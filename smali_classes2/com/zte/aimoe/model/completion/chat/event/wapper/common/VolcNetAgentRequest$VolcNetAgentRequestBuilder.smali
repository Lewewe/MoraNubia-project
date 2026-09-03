.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolcNetAgentRequestBuilder"
.end annotation


# instance fields
.field private botId:Ljava/lang/String;

.field private cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

.field private deviceId:Ljava/lang/String;

.field private knowledge:Ljava/lang/String;

.field private locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private stream:Ljava/lang/Boolean;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public botId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->botId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;
    .locals 10

    .line 10
    new-instance v9, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->botId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->messages:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->stream:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->deviceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->knowledge:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;)V

    return-object v9
.end method

.method public cardConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public knowledge(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->knowledge:Ljava/lang/String;

    return-object p0
.end method

.method public locationInfo(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    return-object p0
.end method

.method public messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->messages:Ljava/util/List;

    return-object p0
.end method

.method public stream(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->stream:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest.VolcNetAgentRequestBuilder(botId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->botId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->stream:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", knowledge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->knowledge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->locationInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->cardConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$VolcNetAgentRequestBuilder;->userId:Ljava/lang/String;

    return-object p0
.end method
