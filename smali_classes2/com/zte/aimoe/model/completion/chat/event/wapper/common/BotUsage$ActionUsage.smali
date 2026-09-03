.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;
    }
.end annotation


# instance fields
.field public actionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action_name"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->actionName:Ljava/lang/String;

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->count:I

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;
    .locals 1

    .line 56
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage$ActionUsageBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getActionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getActionName()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->count:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->getActionName()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_0

    const/16 p0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->actionName:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ActionUsage;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
