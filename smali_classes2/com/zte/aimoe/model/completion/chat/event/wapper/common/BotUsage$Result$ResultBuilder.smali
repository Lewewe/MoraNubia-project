.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBuilder"
.end annotation


# instance fields
.field private coverImage:Ljava/lang/Object;

.field private id:Ljava/lang/String;

.field private publishTime:J

.field private ruyiData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchPluginData:Ljava/lang/Object;

.field private siteName:Ljava/lang/String;

.field private smartContentData:Ljava/lang/Object;

.field private sourceType:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;
    .locals 14

    .line 258
    new-instance v13, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->sourceType:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->siteName:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->summary:Ljava/lang/String;

    iget-wide v6, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->publishTime:J

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->url:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->coverImage:Ljava/lang/Object;

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->searchPluginData:Ljava/lang/Object;

    iget-object v11, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->smartContentData:Ljava/lang/Object;

    iget-object v12, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->ruyiData:Ljava/util/Map;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v13
.end method

.method public coverImage(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->coverImage:Ljava/lang/Object;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public publishTime(J)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->publishTime:J

    return-object p0
.end method

.method public ruyiData(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->ruyiData:Ljava/util/Map;

    return-object p0
.end method

.method public searchPluginData(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->searchPluginData:Ljava/lang/Object;

    return-object p0
.end method

.method public siteName(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->siteName:Ljava/lang/String;

    return-object p0
.end method

.method public smartContentData(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->smartContentData:Ljava/lang/Object;

    return-object p0
.end method

.method public sourceType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->sourceType:Ljava/lang/String;

    return-object p0
.end method

.method public summary(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.Result.ResultBuilder(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->siteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->publishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->coverImage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchPluginData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->searchPluginData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smartContentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->smartContentData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruyiData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->ruyiData:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Result$ResultBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
