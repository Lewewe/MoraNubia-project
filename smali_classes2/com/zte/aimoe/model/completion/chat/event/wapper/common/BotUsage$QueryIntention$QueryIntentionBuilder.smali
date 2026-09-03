.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntentionBuilder"
.end annotation


# instance fields
.field private enableBrowsingIntention:Z

.field private enableQueryRewrite:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;
    .locals 3

    .line 166
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableBrowsingIntention:Z

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableQueryRewrite:Z

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->messages:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;-><init>(ZZLjava/util/List;)V

    return-object v0
.end method

.method public enableBrowsingIntention(Z)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableBrowsingIntention:Z

    return-object p0
.end method

.method public enableQueryRewrite(Z)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableQueryRewrite:Z

    return-object p0
.end method

.method public messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->messages:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.QueryIntention.QueryIntentionBuilder(enableBrowsingIntention="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableBrowsingIntention:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableQueryRewrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->enableQueryRewrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;->messages:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
