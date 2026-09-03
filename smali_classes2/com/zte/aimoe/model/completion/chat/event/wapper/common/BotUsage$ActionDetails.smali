.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
    }
.end annotation


# instance fields
.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public toolDetails:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tool_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->name:Ljava/lang/String;

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->count:I

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->toolDetails:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;
    .locals 1

    .line 72
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails$ActionDetailsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getToolDetails()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getToolDetails()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_6

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getCount()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->count:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getToolDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->toolDetails:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->getToolDetails()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->name:Ljava/lang/String;

    return-void
.end method

.method public setToolDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionDetails;->toolDetails:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
