.class public Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;
.super Ljava/lang/Object;
.source "ErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;
    }
.end annotation


# instance fields
.field public info:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field public logid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->logid:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->info:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;
    .locals 1

    .line 44
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getLogid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getLogid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->info:Ljava/lang/String;

    return-object p0
.end method

.method public getLogid()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getLogid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->getInfo()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->info:Ljava/lang/String;

    return-void
.end method

.method public setLogid(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;->logid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
