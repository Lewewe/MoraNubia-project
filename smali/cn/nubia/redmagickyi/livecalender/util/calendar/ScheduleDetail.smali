.class public Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;
.super Ljava/lang/Object;
.source "ScheduleDetail.java"


# instance fields
.field private description:Ljava/lang/String;

.field private endTimestamp:J

.field private id:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private previousMinutes:I

.field private startTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->description:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getEndTimestamp()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->endTimestamp:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->location:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->name:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getPreviousMinutes()I
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->previousMinutes:I

    return p0
.end method

.method public getStartTimestamp()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->startTimestamp:J

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->description:Ljava/lang/String;

    return-void
.end method

.method public setEndTimestamp(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->endTimestamp:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->location:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public setPreviousMinutes(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->previousMinutes:I

    return-void
.end method

.method public setStartTimestamp(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->startTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScheduleDetail{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', startTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->startTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->endTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->previousMinutes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
