.class public Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RedMagicAlarmReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RedMagicAlarmReceiver"


# instance fields
.field private final clock_action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "intent.action.redmagickyi.clock"

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->clock_action:Ljava/lang/String;

    return-void
.end method

.method private AlarmWakeUp(Landroid/content/Context;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V
    .locals 1

    .line 55
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v0, "alarm_beans"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 57
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 20
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object v0

    .line 21
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ID:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 22
    sget-object v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->HOUR:Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 23
    sget-object v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->MINUTE:Ljava/lang/String;

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 24
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->getAlarmDataById(I)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object v0

    .line 25
    sget-object v5, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--single clockId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "---hour:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "---minute:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "alarmBeans getAlarm_time_millis:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " alarmBeans getTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "alarmBeans getId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v1

    sget v5, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    if-ne v1, v5, :cond_1

    goto/16 :goto_1

    .line 33
    :cond_1
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    sget-object p2, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    const-string v1, "---SINGLE_CLOCK ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->AlarmWakeUp(Landroid/content/Context;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V

    goto :goto_0

    .line 38
    :cond_2
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_REPEAT_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    sget-object p2, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    const-string v1, "---REPEAT REPEAT_CLOCK ACTION_REPEAT_CLOCK_REDMAGIC_ALARMING"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->AlarmWakeUp(Landroid/content/Context;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V

    goto :goto_0

    .line 43
    :cond_3
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_CYCLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    sget-object v1, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    const-string v5, "---PERIOD CYCLE_CLOCK ACTION_CYCLE_CLOCK_REDMAGIC_ALARMING"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RECYCLE_ID:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    sget-object v5, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK:Ljava/lang/String;

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 49
    sget-object v2, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "--PERIOD dbDataId:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "---week:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->AlarmWakeUp(Landroid/content/Context;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V

    :cond_4
    :goto_0
    return-void

    .line 30
    :cond_5
    :goto_1
    sget-object p0, Lcn/nubia/redmagickyi/alarm/receiver/RedMagicAlarmReceiver;->TAG:Ljava/lang/String;

    const-string p1, "---no alarm data or switch off---"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
