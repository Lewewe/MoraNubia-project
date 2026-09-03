.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliGenPotraitDataBuilder"
.end annotation


# instance fields
.field private input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

.field private parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;
    .locals 3

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->resources:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;-><init>(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;Ljava/util/List;)V

    return-object v0
.end method

.method public input(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    return-object p0
.end method

.method public parameters(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    return-object p0
.end method

.method public resources(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->resources:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenPotraitData.AliGenPotraitDataBuilder(input="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;->resources:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
