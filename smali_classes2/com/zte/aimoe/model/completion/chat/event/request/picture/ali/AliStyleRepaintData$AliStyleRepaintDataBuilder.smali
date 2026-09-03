.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;
.super Ljava/lang/Object;
.source "AliStyleRepaintData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliStyleRepaintDataBuilder"
.end annotation


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private styleIndex:Ljava/lang/Integer;

.field private styleRefUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData;
    .locals 3

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleIndex:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleRefUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public styleIndex(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public styleRefUrl(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleRefUrl:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliStyleRepaintData.AliStyleRepaintDataBuilder(imageUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleRefUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliStyleRepaintData$AliStyleRepaintDataBuilder;->styleRefUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
