.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;
.super Ljava/lang/Object;
.source "ModelProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    }
.end annotation


# instance fields
.field private billingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_name"
    .end annotation
.end field

.field private deepThinking:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deep_thinking"
    .end annotation
.end field

.field private flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field private frequencyPenalty:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency_penalty"
    .end annotation
.end field

.field private functionCall:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "function_call"
    .end annotation
.end field

.field private maxTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_tokens"
    .end annotation
.end field

.field private modelName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model_name"
    .end annotation
.end field

.field private multimodal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multimodal"
    .end annotation
.end field

.field private powerLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "power_level"
    .end annotation
.end field

.field private seed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seed"
    .end annotation
.end field

.field private stream:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
    .end annotation
.end field

.field private systemPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "system_prompt"
    .end annotation
.end field

.field private systemPromptEn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "system_prompt_en"
    .end annotation
.end field

.field private temperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temperature"
    .end annotation
.end field

.field private toolTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tool_tag"
    .end annotation
.end field

.field private topK:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_k"
    .end annotation
.end field

.field private topP:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_p"
    .end annotation
.end field

.field private userPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_prompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDDIIIDZIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->flowId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->modelName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPrompt:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPromptEn:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->userPrompt:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->temperature:D

    move v1, p8

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->maxTokens:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->frequencyPenalty:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topP:D

    move/from16 v1, p13

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->deepThinking:I

    move/from16 v1, p14

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->multimodal:I

    move/from16 v1, p15

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->functionCall:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topK:D

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->stream:Z

    move/from16 v1, p19

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->seed:I

    move/from16 v1, p20

    iput v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->powerLevel:I

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->toolTag:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->billingName:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTemperature()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTemperature()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMaxTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMaxTokens()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFrequencyPenalty()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFrequencyPenalty()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopP()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopP()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getDeepThinking()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getDeepThinking()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMultimodal()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMultimodal()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFunctionCall()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFunctionCall()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopK()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopK()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->isStream()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->isStream()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSeed()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSeed()I

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getPowerLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getPowerLevel()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFlowId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_0

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_0
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getModelName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_1

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_1
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPrompt()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_2

    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_2
    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPromptEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPromptEn()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_3

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_3
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getUserPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getUserPrompt()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_4

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_4
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getToolTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getToolTag()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_5

    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_5
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getBillingName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getBillingName()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_1a

    if-eqz p1, :cond_1b

    goto :goto_6

    :cond_1a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    :goto_6
    return v2

    :cond_1b
    return v0
.end method

.method public getBillingName()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->billingName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeepThinking()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->deepThinking:I

    return p0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getFrequencyPenalty()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->frequencyPenalty:D

    return-wide v0
.end method

.method public getFunctionCall()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->functionCall:I

    return p0
.end method

.method public getMaxTokens()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->maxTokens:I

    return p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public getMultimodal()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->multimodal:I

    return p0
.end method

.method public getPowerLevel()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->powerLevel:I

    return p0
.end method

.method public getSeed()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->seed:I

    return p0
.end method

.method public getSystemPrompt()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemPromptEn()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPromptEn:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->temperature:D

    return-wide v0
.end method

.method public getToolTag()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->toolTag:Ljava/lang/String;

    return-object p0
.end method

.method public getTopK()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topK:D

    return-wide v0
.end method

.method public getTopP()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topP:D

    return-wide v0
.end method

.method public getUserPrompt()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->userPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTemperature()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMaxTokens()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFrequencyPenalty()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopP()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getDeepThinking()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getMultimodal()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFunctionCall()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getTopK()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->isStream()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4f

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSeed()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getPowerLevel()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getFlowId()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getModelName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPrompt()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getSystemPromptEn()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getUserPrompt()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getToolTag()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->getBillingName()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    return v0
.end method

.method public isStream()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->stream:Z

    return p0
.end method

.method public setBillingName(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->billingName:Ljava/lang/String;

    return-void
.end method

.method public setDeepThinking(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->deepThinking:I

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyPenalty(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->frequencyPenalty:D

    return-void
.end method

.method public setFunctionCall(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->functionCall:I

    return-void
.end method

.method public setMaxTokens(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->maxTokens:I

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setMultimodal(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->multimodal:I

    return-void
.end method

.method public setPowerLevel(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->powerLevel:I

    return-void
.end method

.method public setSeed(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->seed:I

    return-void
.end method

.method public setStream(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->stream:Z

    return-void
.end method

.method public setSystemPrompt(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPrompt:Ljava/lang/String;

    return-void
.end method

.method public setSystemPromptEn(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->systemPromptEn:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->temperature:D

    return-void
.end method

.method public setToolTag(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->toolTag:Ljava/lang/String;

    return-void
.end method

.method public setTopK(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topK:D

    return-void
.end method

.method public setTopP(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->topP:D

    return-void
.end method

.method public setUserPrompt(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;->userPrompt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 159
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
