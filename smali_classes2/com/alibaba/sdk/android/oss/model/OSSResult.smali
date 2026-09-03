.class public Lcom/alibaba/sdk/android/oss/model/OSSResult;
.super Ljava/lang/Object;
.source "OSSResult.java"


# instance fields
.field private clientCRC:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field private responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverCRC:Ljava/lang/Long;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientCRC()Ljava/lang/Long;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->clientCRC:Ljava/lang/Long;

    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getServerCRC()Ljava/lang/Long;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->serverCRC:Ljava/lang/Long;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    return p0
.end method

.method public setClientCRC(Ljava/lang/Long;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->clientCRC:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    return-void
.end method

.method public setServerCRC(Ljava/lang/Long;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->serverCRC:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "OSSResult<%s>: \nstatusCode:%d,\nresponseHeader:%s,\nrequestId:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
