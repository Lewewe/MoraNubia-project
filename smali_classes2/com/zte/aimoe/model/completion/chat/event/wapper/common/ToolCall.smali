.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;
.super Ljava/lang/Object;
.source "ToolCall.java"


# instance fields
.field private ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private function:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

.field private id:Ljava/lang/String;

.field private index:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getIndex()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getFunction()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getFunction()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getExt()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getExt()Ljava/util/Map;

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

.method public getExt()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->ext:Ljava/util/Map;

    return-object p0
.end method

.method public getFunction()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->function:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->index:I

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getIndex()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getFunction()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->getExt()Ljava/util/Map;

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

.method public setExt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->ext:Ljava/util/Map;

    return-void
.end method

.method public setFunction(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->function:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/CallFunction;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->id:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->index:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
