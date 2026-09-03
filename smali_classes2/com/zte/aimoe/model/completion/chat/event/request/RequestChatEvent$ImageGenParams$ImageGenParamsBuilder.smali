.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageGenParamsBuilder"
.end annotation


# instance fields
.field private ddimSteps$set:Z

.field private ddimSteps$value:Ljava/lang/Integer;

.field private height$set:Z

.field private height$value:Ljava/lang/Integer;

.field private logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

.field private prompt:Ljava/lang/String;

.field private reqKey:Ljava/lang/String;

.field private returnUrl$set:Z

.field private returnUrl$value:Ljava/lang/Boolean;

.field private scale$set:Z

.field private scale$value:Ljava/lang/Float;

.field private seed$set:Z

.field private seed$value:Ljava/lang/Integer;

.field private usePreLlm$set:Z

.field private usePreLlm$value:Ljava/lang/Boolean;

.field private useSr$set:Z

.field private useSr$value:Ljava/lang/Boolean;

.field private width$set:Z

.field private width$value:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
    .locals 13

    .line 66
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->seed$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->seed$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$500()Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    move-object v4, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->scale$value:Ljava/lang/Float;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->scale$set:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$600()Ljava/lang/Float;

    move-result-object v0

    :cond_1
    move-object v5, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->ddimSteps$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->ddimSteps$set:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$700()Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    move-object v6, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->width$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->width$set:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$800()Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    move-object v7, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->height$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->height$set:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$900()Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    move-object v8, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->usePreLlm$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->usePreLlm$set:Z

    if-nez v1, :cond_5

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$1000()Ljava/lang/Boolean;

    move-result-object v0

    :cond_5
    move-object v9, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->useSr$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->useSr$set:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$1100()Ljava/lang/Boolean;

    move-result-object v0

    :cond_6
    move-object v10, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->returnUrl$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->returnUrl$set:Z

    if-nez v1, :cond_7

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->access$1200()Ljava/lang/Boolean;

    move-result-object v0

    :cond_7
    move-object v11, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->reqKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->prompt:Ljava/lang/String;

    iget-object v12, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V

    return-object v0
.end method

.method public ddimSteps(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->ddimSteps$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->ddimSteps$set:Z

    return-object p0
.end method

.method public height(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->height$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->height$set:Z

    return-object p0
.end method

.method public logoInfo(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-object p0
.end method

.method public prompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public reqKey(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->reqKey:Ljava/lang/String;

    return-object p0
.end method

.method public returnUrl(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->returnUrl$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->returnUrl$set:Z

    return-object p0
.end method

.method public scale(Ljava/lang/Float;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->scale$value:Ljava/lang/Float;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->scale$set:Z

    return-object p0
.end method

.method public seed(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->seed$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->seed$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestChatEvent.ImageGenParams.ImageGenParamsBuilder(reqKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->reqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->seed$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->scale$value:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ddimSteps$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->ddimSteps$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->width$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->height$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usePreLlm$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->usePreLlm$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSr$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->useSr$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnUrl$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->returnUrl$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usePreLlm(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->usePreLlm$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->usePreLlm$set:Z

    return-object p0
.end method

.method public useSr(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->useSr$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->useSr$set:Z

    return-object p0
.end method

.method public width(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->width$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;->width$set:Z

    return-object p0
.end method
