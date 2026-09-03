.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolDetailsBuilder"
.end annotation


# instance fields
.field private completedAt:J

.field private createdAt:J

.field private input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

.field private name:Ljava/lang/String;

.field private output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;
    .locals 9

    .line 91
    new-instance v8, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    iget-wide v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->createdAt:J

    iget-wide v6, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->completedAt:J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;-><init>(Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;JJ)V

    return-object v8
.end method

.method public completedAt(J)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->completedAt:J

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->createdAt:J

    return-object p0
.end method

.method public input(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public output(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.ToolDetails.ToolDetailsBuilder(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;->completedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
