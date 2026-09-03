.class public Lcn/nubia/redmagickyi/network/model/NetTimeResponse;
.super Ljava/lang/Object;
.source "NetTimeResponse.java"


# instance fields
.field private time:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->time:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->time:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetTimeResponse{time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
