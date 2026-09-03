.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
.super Ljava/lang/Object;
.source "AliFaceChainData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliFaceChainDataBuilder"
.end annotation


# instance fields
.field private images:[Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private styleImages:[Ljava/lang/String;

.field private styleIndex:Ljava/lang/Integer;

.field private styleUrl:Ljava/lang/String;

.field private trainfree:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;
    .locals 8

    .line 12
    new-instance v7, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->resourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleIndex:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->trainfree:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->images:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleImages:[Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v7
.end method

.method public images([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->images:[Ljava/lang/String;

    return-object p0
.end method

.method public resourceId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public styleImages([Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleImages:[Ljava/lang/String;

    return-object p0
.end method

.method public styleIndex(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public styleUrl(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleUrl:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliFaceChainData.AliFaceChainDataBuilder(resourceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trainfree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->trainfree:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->images:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->styleImages:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trainfree(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceChainData$AliFaceChainDataBuilder;->trainfree:Ljava/lang/Boolean;

    return-object p0
.end method
