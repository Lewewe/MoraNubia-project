.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionDetailsBuilder"
.end annotation


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private toolDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;
    .locals 3

    .line 72
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->name:Ljava/lang/String;

    iget v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->count:I

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->toolDetails:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method public count(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
    .locals 0

    .line 72
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->count:I

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.ActionDetails.ActionDetailsBuilder(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->toolDetails:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toolDetails(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;->toolDetails:Ljava/util/List;

    return-object p0
.end method
