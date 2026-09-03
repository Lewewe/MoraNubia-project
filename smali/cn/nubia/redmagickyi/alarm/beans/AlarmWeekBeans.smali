.class public Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;
.super Ljava/lang/Object;
.source "AlarmWeekBeans.java"


# instance fields
.field private isCheck:Z

.field private value:I

.field private week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck:Z

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 9
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->value:I

    return p0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->week:Ljava/lang/String;

    return-object p0
.end method

.method public isCheck()Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck:Z

    return p0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->value:I

    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->week:Ljava/lang/String;

    return-void
.end method
