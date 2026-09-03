.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private district:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "district"
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private province:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "province"
    .end annotation
.end field

.field private town:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "town"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->province:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->city:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->district:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->town:Ljava/lang/String;

    iput-wide p5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->longitude:D

    iput-wide p7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->latitude:D

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;
    .locals 1

    .line 38
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo$LocationInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_1
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getDistrict()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_2
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getTown()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getTown()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_b

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_3
    return v2

    :cond_c
    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->city:Ljava/lang/String;

    return-object p0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->district:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->longitude:D

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->province:Ljava/lang/String;

    return-object p0
.end method

.method public getTown()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->town:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 37
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getDistrict()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getTown()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->district:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->longitude:D

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setTown(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->town:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest.LocationInfo(province="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", town="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getTown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
