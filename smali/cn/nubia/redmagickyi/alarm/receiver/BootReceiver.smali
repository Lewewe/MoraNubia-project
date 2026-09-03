.class public Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final APP_DATA_CLEAR:Ljava/lang/String; = "APP_DATA_CLEAR"

.field private static final BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final RESET_ALARM:I = 0x0

.field private static TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field private static final TIME_SET:Ljava/lang/String; = "android.intent.action.TIME_SET"


# instance fields
.field private alarmBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver$1;-><init>(Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public ResetAlarm()V
    .locals 22

    move-object/from16 v0, p0

    .line 71
    sget-object v1, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResetAlarm alarmBeansList size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v2

    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->realCancelClock(Landroid/content/Context;I)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_5

    .line 83
    iget-object v7, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v9

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setPeriodAlarm(Landroid/content/Context;[Ljava/lang/String;IIIZJ)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object v15, v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v16

    .line 86
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v20

    .line 85
    invoke-static/range {v15 .. v21}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setSingleAlarm(Landroid/content/Context;IIIZJ)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->context:Landroid/content/Context;

    .line 37
    sget-object v0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "APP_DATA_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIME_SET"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 42
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 44
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 45
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->alarmBeansList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
