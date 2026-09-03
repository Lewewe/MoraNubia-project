.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputDataContentBuilder"
.end annotation


# instance fields
.field private debugData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private logId:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;",
            ">;"
        }
    .end annotation
.end field

.field private timing:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;
    .locals 7

    .line 233
    new-instance v6, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->hasMore:Z

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->results:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->debugData:Ljava/util/Map;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->logId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->timing:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;-><init>(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;)V

    return-object v6
.end method

.method public debugData(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->debugData:Ljava/util/Map;

    return-object p0
.end method

.method public hasMore(Z)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->hasMore:Z

    return-object p0
.end method

.method public logId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->logId:Ljava/lang/String;

    return-object p0
.end method

.method public results(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->results:Ljava/util/List;

    return-object p0
.end method

.method public timing(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->timing:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.OutputDataContent.OutputDataContentBuilder(hasMore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->results:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->debugData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->logId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent$OutputDataContentBuilder;->timing:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
