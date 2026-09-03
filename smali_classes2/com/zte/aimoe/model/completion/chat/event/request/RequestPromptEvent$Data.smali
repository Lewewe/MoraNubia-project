.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
.super Ljava/lang/Object;
.source "RequestPromptEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field public chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_config"
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field public flowVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_version"
    .end annotation
.end field

.field public imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_gen_params"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field


# direct methods
.method private static $default$createdAt()J
    .locals 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->$default$createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->createdAt:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->createdAt:J

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->language:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 32
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->$default$createdAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowVersion()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getChatConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getChatConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getImageGenParams()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getImageGenParams()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    move-result-object p1

    if-nez p0, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    :goto_4
    return v2

    :cond_d
    return v0
.end method

.method public getChatConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    return-object p0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getFlowVersion()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getImageGenParams()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->language:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getFlowVersion()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getChatConfig()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getLanguage()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->getImageGenParams()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

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

.method public setChatConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->createdAt:J

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setFlowVersion(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->flowVersion:Ljava/lang/String;

    return-void
.end method

.method public setImageGenParams(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->language:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
