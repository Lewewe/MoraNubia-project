.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationInfoBuilder"
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private province:Ljava/lang/String;

.field private town:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;
    .locals 10

    .line 38
    new-instance v9, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->province:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->city:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->district:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->town:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->longitude:D

    iget-wide v7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->latitude:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    return-object v9
.end method

.method public city(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public district(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->district:Ljava/lang/String;

    return-object p0
.end method

.method public latitude(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->latitude:D

    return-object p0
.end method

.method public longitude(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->longitude:D

    return-object p0
.end method

.method public province(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->province:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest.LocationInfo.LocationInfoBuilder(province="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", town="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->town:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public town(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;->town:Ljava/lang/String;

    return-object p0
.end method
