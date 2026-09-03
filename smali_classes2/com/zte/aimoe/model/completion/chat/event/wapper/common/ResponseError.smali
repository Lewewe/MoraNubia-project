.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;
.super Ljava/lang/Object;
.source "ResponseError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;
    }
.end annotation


# instance fields
.field private error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;


# direct methods
.method constructor <init>(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->getError()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->getError()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    move-result-object p1

    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getError()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->getError()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x3b

    add-int/2addr v0, p0

    return v0
.end method

.method public setError(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
