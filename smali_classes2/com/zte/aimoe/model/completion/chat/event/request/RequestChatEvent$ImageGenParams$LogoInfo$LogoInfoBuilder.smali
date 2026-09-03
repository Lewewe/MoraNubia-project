.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogoInfoBuilder"
.end annotation


# instance fields
.field private addLogo$set:Z

.field private addLogo$value:Ljava/lang/Boolean;

.field private language$set:Z

.field private language$value:Ljava/lang/Integer;

.field private logoTextContent:Ljava/lang/String;

.field private opacity$set:Z

.field private opacity$value:Ljava/lang/Float;

.field private position$set:Z

.field private position$value:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLogo(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->addLogo$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->addLogo$set:Z

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->addLogo$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->addLogo$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    move-object v2, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->position$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->position$set:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;->access$200()Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v3, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->language$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->language$set:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;->access$300()Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    move-object v4, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->opacity$value:Ljava/lang/Float;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->opacity$set:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;->access$400()Ljava/lang/Float;

    move-result-object v0

    :cond_3
    move-object v5, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->logoTextContent:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)V

    return-object v0
.end method

.method public language(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->language$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->language$set:Z

    return-object p0
.end method

.method public logoTextContent(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->logoTextContent:Ljava/lang/String;

    return-object p0
.end method

.method public opacity(Ljava/lang/Float;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->opacity$value:Ljava/lang/Float;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->opacity$set:Z

    return-object p0
.end method

.method public position(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->position$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->position$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestChatEvent.ImageGenParams.LogoInfo.LogoInfoBuilder(addLogo$value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->addLogo$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->position$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->language$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opacity$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->opacity$value:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoTextContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo$LogoInfoBuilder;->logoTextContent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
