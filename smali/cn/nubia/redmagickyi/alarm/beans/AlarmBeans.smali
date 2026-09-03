.class public Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;
.super Ljava/lang/Object;
.source "AlarmBeans.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action_id:I

.field private alarm_switch:I

.field private alarm_time_millis:J

.field private alarm_type:I

.field private id:I

.field private label:Ljava/lang/String;

.field private repeat_type:I

.field private repeat_week:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private vocie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_type:I

    const/16 v0, 0x1390

    .line 12
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->action_id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->id:I

    .line 103
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->time:Ljava/lang/String;

    .line 104
    iput p3, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_type:I

    .line 105
    iput-wide p4, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_time_millis:J

    .line 106
    iput p6, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_type:I

    .line 107
    iput-object p7, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->label:Ljava/lang/String;

    .line 108
    iput p8, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->action_id:I

    .line 109
    iput-object p9, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->vocie:Ljava/lang/String;

    .line 110
    iput p10, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_switch:I

    .line 111
    iput-object p11, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_week:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction_id()I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->action_id:I

    return p0
.end method

.method public getAlarm_switch()I
    .locals 0

    .line 91
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_switch:I

    return p0
.end method

.method public getAlarm_time_millis()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_time_millis:J

    return-wide v0
.end method

.method public getAlarm_type()I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_type:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->id:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getRepeat_type()I
    .locals 0

    .line 51
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_type:I

    return p0
.end method

.method public getRepeat_week()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_week:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getVocie()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->vocie:Ljava/lang/String;

    return-object p0
.end method

.method public setAction_id(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->action_id:I

    return-void
.end method

.method public setAlarm_switch(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_switch:I

    return-void
.end method

.method public setAlarm_time_millis(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_time_millis:J

    return-void
.end method

.method public setAlarm_type(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->alarm_type:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->id:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->label:Ljava/lang/String;

    return-void
.end method

.method public setRepeat_type(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_type:I

    return-void
.end method

.method public setRepeat_week(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->repeat_week:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->time:Ljava/lang/String;

    return-void
.end method

.method public setVocie(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->vocie:Ljava/lang/String;

    return-void
.end method
