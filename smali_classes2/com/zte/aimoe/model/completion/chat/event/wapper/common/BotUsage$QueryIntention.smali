.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryIntention"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
    }
.end annotation


# instance fields
.field public enableBrowsingIntention:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_browsing_intention"
    .end annotation
.end field

.field public enableQueryRewrite:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_query_rewrite"
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableBrowsingIntention:Z

    iput-boolean p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableQueryRewrite:Z

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->messages:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;
    .locals 1

    .line 166
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention$QueryIntentionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 165
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableBrowsingIntention()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableBrowsingIntention()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableQueryRewrite()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableQueryRewrite()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->getMessages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->getMessages()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->messages:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableBrowsingIntention()Z

    move-result v0

    const/16 v1, 0x4f

    const/16 v2, 0x61

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->isEnableQueryRewrite()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->getMessages()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v3

    if-nez p0, :cond_2

    const/16 p0, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_2
    add-int/2addr v0, p0

    return v0
.end method

.method public isEnableBrowsingIntention()Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableBrowsingIntention:Z

    return p0
.end method

.method public isEnableQueryRewrite()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableQueryRewrite:Z

    return p0
.end method

.method public setEnableBrowsingIntention(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableBrowsingIntention:Z

    return-void
.end method

.method public setEnableQueryRewrite(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->enableQueryRewrite:Z

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Message;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;->messages:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 180
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
