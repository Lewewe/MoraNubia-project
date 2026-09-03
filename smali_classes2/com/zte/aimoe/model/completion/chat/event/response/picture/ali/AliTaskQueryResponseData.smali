.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;
.super Ljava/lang/Object;
.source "AliTaskQueryResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;,
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$Result;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private results:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$Result;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scheduled_time"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private styleIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style_index"
    .end annotation
.end field

.field private submitTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "submit_time"
    .end annotation
.end field

.field private taskId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_id"
    .end annotation
.end field

.field private taskMetrics:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_metrics"
    .end annotation
.end field

.field private taskStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStyleIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStyleIndex()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getSubmitTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getSubmitTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getScheduledTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getScheduledTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getEndTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStartTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getResults()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskMetrics()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskMetrics()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;

    move-result-object v3

    if-nez v1, :cond_17

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_a
    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_19

    if-eqz v3, :cond_1a

    goto :goto_b

    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_b
    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_1b

    if-eqz p1, :cond_1c

    goto :goto_c

    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    :goto_c
    return v2

    :cond_1c
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$Result;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->results:Ljava/util/List;

    return-object p0
.end method

.method public getScheduledTime()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->scheduledTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->startTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStyleIndex()Ljava/lang/Integer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->styleIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSubmitTime()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->submitTime:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskMetrics()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskMetrics:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;

    return-object p0
.end method

.method public getTaskStatus()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskStatus:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStyleIndex()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskId()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskStatus()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getSubmitTime()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getScheduledTime()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getEndTime()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getStartTime()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getResults()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getTaskMetrics()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getCode()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->getMessage()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->code:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->message:Ljava/lang/String;

    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$Result;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->results:Ljava/util/List;

    return-void
.end method

.method public setScheduledTime(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->scheduledTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStyleIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->styleIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setSubmitTime(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->submitTime:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTaskMetrics(Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskMetrics:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData$TaskMetrics;

    return-void
.end method

.method public setTaskStatus(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;->taskStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
