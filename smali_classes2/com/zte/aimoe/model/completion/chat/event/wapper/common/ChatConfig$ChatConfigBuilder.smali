.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;
.super Ljava/lang/Object;
.source "ChatConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatConfigBuilder"
.end annotation


# instance fields
.field private customVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private knowledge:Ljava/lang/String;

.field private memory:Ljava/lang/String;

.field private profile:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;
    .locals 4

    .line 13
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->memory:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->profile:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->knowledge:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->customVariables:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public customVariables(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->customVariables:Ljava/util/Map;

    return-object p0
.end method

.method public knowledge(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->knowledge:Ljava/lang/String;

    return-object p0
.end method

.method public memory(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->memory:Ljava/lang/String;

    return-object p0
.end method

.method public profile(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->profile:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatConfig.ChatConfigBuilder(memory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->memory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", knowledge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->knowledge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customVariables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->customVariables:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
