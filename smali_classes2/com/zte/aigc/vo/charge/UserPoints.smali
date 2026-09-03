.class public Lcom/zte/aigc/vo/charge/UserPoints;
.super Ljava/lang/Object;
.source "UserPoints.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;,
        Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/zte/aigc/vo/charge/UserPoints;",
        ">;"
    }
.end annotation


# instance fields
.field private comments:Ljava/lang/String;

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private endTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private id:I

.field private obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

.field private obtainPoints:I

.field private points:I

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private status:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->id:I

    .line 17
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->status:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    .line 18
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->id:I

    .line 17
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->status:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    .line 18
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    .line 32
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->id:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zte/aigc/vo/charge/UserPoints;)I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    sget-object v1, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    invoke-virtual {v0, v1}, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->createTime:Ljava/util/Date;

    iget-object p1, p1, Lcom/zte/aigc/vo/charge/UserPoints;->createTime:Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/zte/aigc/vo/charge/UserPoints;

    invoke-virtual {p0, p1}, Lcom/zte/aigc/vo/charge/UserPoints;->compareTo(Lcom/zte/aigc/vo/charge/UserPoints;)I

    move-result p0

    return p0
.end method

.method public getComments()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->comments:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->endTime:Ljava/util/Date;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->id:I

    return p0
.end method

.method public getObtainFrom()Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-object p0
.end method

.method public getObtainPoints()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainPoints:I

    return p0
.end method

.method public getPoints()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->points:I

    return p0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->startTime:Ljava/util/Date;

    return-object p0
.end method

.method public getStatus()Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->status:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints;->userId:I

    return p0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->comments:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->endTime:Ljava/util/Date;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->id:I

    return-void
.end method

.method public setObtainFrom(Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainFrom:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-void
.end method

.method public setObtainPoints(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->obtainPoints:I

    return-void
.end method

.method public setPoints(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->points:I

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->startTime:Ljava/util/Date;

    return-void
.end method

.method public setStatus(Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->status:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPoints;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
