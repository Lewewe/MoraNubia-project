.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;
.super Ljava/lang/Object;
.source "AliGenerateQueryData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;
    }
.end annotation


# instance fields
.field private taskId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->taskId:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;
    .locals 1

    .line 8
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->getTaskId()Ljava/lang/String;

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

.method public getTaskId()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->getTaskId()Ljava/lang/String;

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

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->taskId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenerateQueryData(taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
