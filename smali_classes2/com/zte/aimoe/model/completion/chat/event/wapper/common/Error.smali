.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;
.super Ljava/lang/Object;
.source "Error.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private param:Ljava/lang/Object;

.field private type:Ljava/lang/String;


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
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getMessage()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getParam()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getCode()Ljava/lang/String;

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

.method public getCode()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->param:Ljava/lang/Object;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getMessage()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getParam()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->getCode()Ljava/lang/String;

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

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->message:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/Object;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->param:Ljava/lang/Object;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
