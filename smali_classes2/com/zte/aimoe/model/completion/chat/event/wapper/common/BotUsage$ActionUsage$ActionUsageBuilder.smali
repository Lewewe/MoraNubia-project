.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionUsageBuilder"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private count:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionName(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;
    .locals 2

    .line 56
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->actionName:Ljava/lang/String;

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->count:I

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public count(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;
    .locals 0

    .line 56
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->count:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.ActionUsage.ActionUsageBuilder(actionName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;->count:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
