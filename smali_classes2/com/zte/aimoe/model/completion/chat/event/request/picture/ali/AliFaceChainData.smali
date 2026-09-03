.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;
.super Ljava/lang/Object;
.source "AliFaceChainData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    }
.end annotation


# instance fields
.field private images:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource_id"
    .end annotation
.end field

.field private styleImages:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style_images"
    .end annotation
.end field

.field private styleIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style_index"
    .end annotation
.end field

.field private styleUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style_url"
    .end annotation
.end field

.field private trainfree:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trainfree"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->resourceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleIndex:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->trainfree:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->images:[Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleImages:[Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 1

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleIndex()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getTrainfree()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getTrainfree()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getResourceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getImages()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getImages()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleImages()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleImages()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getImages()[Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->images:[Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getStyleImages()[Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleImages:[Ljava/lang/String;

    return-object p0
.end method

.method public getStyleIndex()Ljava/lang/Integer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStyleUrl()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTrainfree()Ljava/lang/Boolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->trainfree:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleIndex()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getTrainfree()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getResourceId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleUrl()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getImages()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->getStyleImages()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setImages([Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->images:[Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setStyleImages([Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleImages:[Ljava/lang/String;

    return-void
.end method

.method public setStyleIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setStyleUrl(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->styleUrl:Ljava/lang/String;

    return-void
.end method

.method public setTrainfree(Ljava/lang/Boolean;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;->trainfree:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
