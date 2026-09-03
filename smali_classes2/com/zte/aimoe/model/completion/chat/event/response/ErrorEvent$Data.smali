.class public Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;
.super Ljava/lang/Object;
.source "ErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field public code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field public detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail"
    .end annotation
.end field

.field public msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->msg:Ljava/lang/String;

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->code:I

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
    .locals 1

    .line 25
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getCode()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getMsg()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getDetail()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getDetail()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

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

.method public getCode()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->code:I

    return p0
.end method

.method public getDetail()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 24
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getMsg()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->getDetail()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

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

.method public setCode(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->code:I

    return-void
.end method

.method public setDetail(Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
