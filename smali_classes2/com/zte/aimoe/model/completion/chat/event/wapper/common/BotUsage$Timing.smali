.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;
    }
.end annotation


# instance fields
.field public total:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->total:I

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;
    .locals 1

    .line 301
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 300
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 300
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->getTotal()I

    move-result p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->getTotal()I

    move-result p1

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getTotal()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->total:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x3b

    .line 300
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->getTotal()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setTotal(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 309
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
