.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;
.super Ljava/lang/Object;
.source "RequestRecordSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;,
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$RequestRecordSearchBuilder;
    }
.end annotation


# instance fields
.field private data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private eventType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_type"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$RequestRecordSearchBuilder;
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$RequestRecordSearchBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$RequestRecordSearchBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getEventType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    move-result-object p1

    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    return-object p0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->id:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getEventType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->eventType:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestRecordSearch(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

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
