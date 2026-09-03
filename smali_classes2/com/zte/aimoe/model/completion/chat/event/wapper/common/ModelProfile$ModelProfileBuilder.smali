.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
.super Ljava/lang/Object;
.source "ModelProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelProfileBuilder"
.end annotation


# instance fields
.field private billingName:Ljava/lang/String;

.field private deepThinking:I

.field private flowId:Ljava/lang/String;

.field private frequencyPenalty:D

.field private functionCall:I

.field private maxTokens:I

.field private modelName:Ljava/lang/String;

.field private multimodal:I

.field private powerLevel:I

.field private seed:I

.field private stream:Z

.field private systemPrompt:Ljava/lang/String;

.field private systemPromptEn:Ljava/lang/String;

.field private temperature:D

.field private toolTag:Ljava/lang/String;

.field private topK:D

.field private topP:D

.field private userPrompt:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public billingName(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->billingName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;
    .locals 27

    move-object/from16 v0, p0

    .line 11
    new-instance v24, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->flowId:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->modelName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPrompt:Ljava/lang/String;

    iget-object v5, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPromptEn:Ljava/lang/String;

    iget-object v6, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->userPrompt:Ljava/lang/String;

    iget-wide v7, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->temperature:D

    iget v9, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->maxTokens:I

    iget-wide v10, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->frequencyPenalty:D

    iget-wide v12, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topP:D

    iget v14, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->deepThinking:I

    iget v15, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->multimodal:I

    move-object/from16 v25, v1

    iget v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->functionCall:I

    move/from16 v16, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topK:D

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->stream:Z

    move/from16 v19, v1

    iget v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->seed:I

    move/from16 v20, v1

    iget v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->powerLevel:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->toolTag:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v0, v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->billingName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v23}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDDIIIDZIILjava/lang/String;Ljava/lang/String;)V

    return-object v24
.end method

.method public deepThinking(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->deepThinking:I

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public frequencyPenalty(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->frequencyPenalty:D

    return-object p0
.end method

.method public functionCall(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->functionCall:I

    return-object p0
.end method

.method public maxTokens(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->maxTokens:I

    return-object p0
.end method

.method public modelName(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public multimodal(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->multimodal:I

    return-object p0
.end method

.method public powerLevel(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->powerLevel:I

    return-object p0
.end method

.method public seed(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->seed:I

    return-object p0
.end method

.method public stream(Z)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->stream:Z

    return-object p0
.end method

.method public systemPrompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public systemPromptEn(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPromptEn:Ljava/lang/String;

    return-object p0
.end method

.method public temperature(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->temperature:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelProfile.ModelProfileBuilder(flowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemPrompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemPromptEn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->systemPromptEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userPrompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->userPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->temperature:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->maxTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequencyPenalty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->frequencyPenalty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topP:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deepThinking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->deepThinking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multimodal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->multimodal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", functionCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->functionCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topK:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->stream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->powerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->toolTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->billingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toolTag(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->toolTag:Ljava/lang/String;

    return-object p0
.end method

.method public topK(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topK:D

    return-object p0
.end method

.method public topP(D)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->topP:D

    return-object p0
.end method

.method public userPrompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ModelProfile$ModelProfileBuilder;->userPrompt:Ljava/lang/String;

    return-object p0
.end method
