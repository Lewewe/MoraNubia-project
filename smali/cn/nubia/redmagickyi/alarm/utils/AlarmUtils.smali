.class public Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field public static ACTION_CYCLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String; = "cn.nubia.redmagickyi.Alarm_cycle"

.field public static ACTION_REPEAT_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String; = "cn.nubia.redmagickyi.Alarm_repeat"

.field public static ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String; = "cn.nubia.redmagickyi.Alarm_single"

.field public static ALARM_ENABLE:Ljava/lang/String; = null

.field public static ALARM_ENABLE_ENABLE:I = 0x0

.field public static ALARM_ENABLE_ENABLE_DEFAULT:I = 0x0

.field public static ALARM_ID:Ljava/lang/String; = "clockId"

.field public static final ALARM_INIT_ID_5008:I = 0x1390

.field public static final ALARM_INIT_ID_5009:I = 0x1391

.field public static final ALARM_INIT_ID_5010:I = 0x1392

.field public static ALARM_RING_DELAY_TIMEMILLIS:J = 0x0L

.field private static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static HOUR:Ljava/lang/String; = "hour"

.field public static MINUTE:Ljava/lang/String; = "minute"

.field private static PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.redmagickyi"

.field private static RECEVIER_CLASS_NAME:Ljava/lang/String; = "cn.nubia.redmagickyi.alarm.receiver.RedMagicAlarmReceiver"

.field public static RECYCLE_ID:Ljava/lang/String; = "recycle_id"

.field public static RING_CUSTOM:I = 0x1

.field public static RING_ONLY_ONE_TIME:I = 0x0

.field public static SWITCH_OFF:I = 0x0

.field public static SWITCH_ON:I = 0x1

.field private static TAG:Ljava/lang/String; = "AlarmUtils"

.field private static final TYPE_IMAGE:[I

.field public static WEEK:Ljava/lang/String; = "week"

.field public static WEEK_VALUE:[I

.field public static mAlarmMotionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    const-wide/32 v0, 0x927c0

    .line 53
    sput-wide v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_RING_DELAY_TIMEMILLIS:J

    .line 55
    const-string v0, "redmagickyi_alarm_enable"

    sput-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 57
    sput v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE_ENABLE:I

    const/4 v1, 0x0

    .line 59
    sput v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE_ENABLE_DEFAULT:I

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->mAlarmMotionMap:Ljava/util/HashMap;

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1390

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->mAlarmMotionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x1391

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->mAlarmMotionMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1392

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_date:I

    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_getup:I

    sget v5, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_meal:I

    sget v6, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_nap:I

    sget v7, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_normal:I

    sget v8, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_sleep:I

    sget v9, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_sport:I

    sget v10, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_study:I

    sget v11, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_mojinaozhong_water:I

    filled-new-array/range {v3 .. v11}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TYPE_IMAGE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlarmEnable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "AlarmEnable ENABLE:"

    .line 390
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportRedmagickyiAlarm()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 392
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE:Ljava/lang/String;

    sget v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE_ENABLE_DEFAULT:I

    invoke-static {p0, v1, v3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 393
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ENABLE_ENABLE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public static StringToTimeFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 306
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 311
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static UpdateAlarmRingTimemillis(Landroid/content/Context;IJ)V
    .locals 0

    .line 379
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    .line 380
    const-string p0, "alarm_time_inmillis"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->UpdateAlarmDataById(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static UpdateSwitch(Landroid/content/Context;ZI)V
    .locals 0

    .line 385
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    if-eqz p1, :cond_0

    .line 386
    sget p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    goto :goto_0

    :cond_0
    sget p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "alarm_switch"

    invoke-static {p2, p1, p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->UpdateAlarmDataById(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getActionIdCareAndAlarm(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1390

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1391

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1392

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLifeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getSystermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getWorkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    sget-object p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->CARE_VOICE_ID:[Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getAlarmRingWeek([Ljava/lang/String;II)I
    .locals 6

    if-eqz p0, :cond_6

    .line 340
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 343
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 346
    :goto_0
    :try_start_0
    array-length v5, p0

    if-ge v4, v5, :cond_5

    .line 347
    aget-object v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v2, v5, :cond_2

    .line 348
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    .line 349
    aget-object p1, p0, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    :cond_2
    aget-object v2, p0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 354
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 355
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 356
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 357
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->set(II)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_4

    .line 359
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p2, "System.currentTimeMillis() > calendar.getTimeInMillis()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_3

    .line 361
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p2, "i == weeks.length - 1"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    aget-object p1, p0, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 364
    aget-object p1, p0, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 367
    :cond_4
    aget-object p1, p0, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAlarmRingWeek ERROR!!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_5
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAlarmTypeImage(I)I
    .locals 1

    .line 404
    sget-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TYPE_IMAGE:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getAlarmVoice(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 427
    const-string p0, ""

    return-object p0

    .line 425
    :pswitch_0
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_voice_tip3:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 423
    :pswitch_1
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_voice_tip2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :pswitch_2
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_voice_tip1:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1390
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimeValue(Ljava/lang/String;I)I
    .locals 1

    .line 317
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 318
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getWeekDay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 262
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 263
    sget-object v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->isEveryDay([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_repeat_every_day:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 268
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->valueToweek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->alarm_day_concat:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static getWeekList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 328
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 331
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isEveryDay([Ljava/lang/String;[I)Z
    .locals 0

    .line 254
    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUnitAlarmVoice(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1390
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static realCancelClock(Landroid/content/Context;I)V
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    .line 247
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 248
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 249
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 250
    sget-object p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel alarm:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setPeriodAlarm(Landroid/content/Context;[Ljava/lang/String;IIIZJ)V
    .locals 8

    if-eqz p1, :cond_4

    .line 124
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK:Ljava/lang/String;

    invoke-static {p1, p3, p4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmRingWeek([Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->HOUR:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->MINUTE:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RECEVIER_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    .line 137
    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 138
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 139
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    .line 140
    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 145
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 146
    invoke-static {p1, p3, p4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmRingWeek([Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 147
    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 148
    invoke-virtual {v2, v3, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 150
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 151
    sget-object v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setPeriodAlarm Calendar\uff1aweek:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmRingWeek([Ljava/lang/String;II)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, " hour:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "minute:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "isDelay:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "setPeriodAlarm System.currentTimeMillis()\uff1a"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "setPeriodAlarm delayMillins\uff1a"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "setPeriodAlarm calendar.getTime\uff1a"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " calendar.getTimeInMillis():"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_2

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p1, v6, p6

    if-gez p1, :cond_2

    .line 156
    invoke-virtual {v2, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p3, "setPeriodAlarm calendar.setTimeInMillis(delayMillins);"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long p1, p5, v6

    if-lez p1, :cond_3

    const/4 p1, 0x5

    .line 160
    invoke-virtual {v2, p1, v4}, Ljava/util/Calendar;->add(II)V

    .line 161
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p3, "setPeriodAlarm calendar.add(Calendar.DAY_OF_MONTH, 7);"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    new-instance p1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    invoke-direct {p1, p5, p6, v0}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 165
    invoke-virtual {v1, p1, v0}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 166
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    invoke-virtual {v1, v5, p5, p6, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 167
    sget-object p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "---AlarmRingTimemillis:"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-static {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateAlarmRingTimemillis(Landroid/content/Context;IJ)V

    .line 169
    sget-object p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "---setRepeatAlarm ok:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_4
    :goto_0
    sget-object p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p1, "---weeks.length == 0:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSingleAlarm(Landroid/content/Context;IIIZJ)V
    .locals 8

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->HOUR:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->MINUTE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RECEVIER_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ACTION_SINGLE_CLOCK_REDMAGIC_ALARMING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    .line 88
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 89
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 96
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 97
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xb

    .line 98
    invoke-virtual {v2, v5, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 99
    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 100
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 101
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 102
    sget-object v5, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setSingleAlarm Calendar\uff1a hour:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "minute:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "isDelay:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "setSingleAlarm System.currentTimeMillis()\uff1a"

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "setSingleAlarm delayMillins\uff1a"

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "setSingleAlarm calendar.getTime\uff1a"

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, " calendar.getTimeInMillis():"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long p2, p2, p5

    if-gez p2, :cond_1

    .line 107
    invoke-virtual {v2, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p3, "setSingleAlarm calendar.setTimeInMillis(delayMillins);"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_2

    const/4 p2, 0x1

    .line 111
    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 112
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    const-string p3, "setSingleAlarm calendar.add(Calendar.DAY_OF_MONTH, 7);"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    new-instance p2, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-direct {p2, p3, p4, v0}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 115
    invoke-virtual {v1, p2, v0}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 116
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v1, v4, p2, p3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 117
    sget-object p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "---AlarmRingTimemillis:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateAlarmRingTimemillis(Landroid/content/Context;IJ)V

    .line 119
    sget-object p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "---setSingleAlarm ok:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static valueToweek(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$array;->alarm_weeks:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    packed-switch p1, :pswitch_data_0

    .line 300
    const-string p0, ""

    return-object p0

    :pswitch_0
    const/4 p1, 0x6

    .line 298
    aget-object p0, p0, p1

    return-object p0

    :pswitch_1
    const/4 p1, 0x5

    .line 296
    aget-object p0, p0, p1

    return-object p0

    :pswitch_2
    const/4 p1, 0x4

    .line 294
    aget-object p0, p0, p1

    return-object p0

    :pswitch_3
    const/4 p1, 0x3

    .line 292
    aget-object p0, p0, p1

    return-object p0

    :pswitch_4
    const/4 p1, 0x2

    .line 290
    aget-object p0, p0, p1

    return-object p0

    :pswitch_5
    const/4 p1, 0x1

    .line 288
    aget-object p0, p0, p1

    return-object p0

    :pswitch_6
    const/4 p1, 0x0

    .line 286
    aget-object p0, p0, p1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
