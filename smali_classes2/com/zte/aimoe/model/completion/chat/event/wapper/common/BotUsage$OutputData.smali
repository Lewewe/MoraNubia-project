.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;
    }
.end annotation


# instance fields
.field public dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->statusCode:I

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;
    .locals 1

    .line 217
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 216
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 216
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getStatusCode()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getDataContent()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getDataContent()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

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

.method public getDataContent()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->statusCode:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getStatusCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->getDataContent()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

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

.method public setDataContent(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;->statusCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 228
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
