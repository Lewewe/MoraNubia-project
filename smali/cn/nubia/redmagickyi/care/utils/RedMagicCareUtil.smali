.class public Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;
.super Ljava/lang/Object;
.source "RedMagicCareUtil.java"


# static fields
.field private static final BATEERY_10_LOW:D = 10.0

.field private static final BATEERY_FULL:D = 100.0

.field private static final BRIGHT_FULL:I = 0xff

.field private static final BRIGHT_HIGHT_PERCENT:D = 0.8

.field private static final BRIGHT_LOW_PERCENT:D = 0.1

.field public static final CARE_PALY_FREQUENCY_ALL:I = 0x0

.field public static final CARE_PALY_FREQUENCY_HIGH:I = 0x1

.field public static final CARE_PALY_FREQUENCY_LOW:I = 0x3

.field public static final CARE_PALY_FREQUENCY_MIN:I = 0x2

.field private static FIVE_MIN:J = 0x0L

.field private static FIVE_TIME:I = 0x0

.field private static FRIDAY:I = 0x6

.field public static final LAST_WEATHER_DEFALT:J = 0x0L

.field private static MONDAY:I = 0x2

.field public static final ONE_HOUR_TIME:J = 0x36ee80L

.field private static SARURDAY:I = 0x7

.field private static SUNDAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RedMagicCareUtil"

.field private static THURESDAY:I = 0x5

.field private static TUSEDAY:I = 0x3

.field private static final VOLUME_HIGHT_PERCENT:D = 0.8

.field private static WEDNESDAY:I = 0x4

.field private static listUnlockTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static listUnlockTimeTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    const-wide/32 v0, 0x493e0

    .line 349
    sput-wide v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FIVE_MIN:J

    const/4 v0, 0x5

    .line 350
    sput v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FIVE_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CareUtilinit(Landroid/content/Context;ILcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;)I
    .locals 11

    .line 56
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, -0x1

    if-eq p1, v1, :cond_22

    const/16 v1, 0x3f1

    if-eq p1, v1, :cond_20

    const/16 v1, 0x3f2

    if-eq p1, v1, :cond_1e

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xa

    const/16 v3, 0x8

    const/16 v4, 0x12

    const/16 v5, 0x9

    packed-switch p1, :pswitch_data_1

    const-wide/32 v6, 0x6ddd00

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x7

    packed-switch p1, :pswitch_data_2

    return v2

    .line 219
    :pswitch_0
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p0, :cond_1

    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {v5, v8}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getUnlockTimeBetween5MIN()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x7df

    return p0

    :cond_1
    :goto_0
    return v2

    .line 210
    :pswitch_1
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p0, :cond_3

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-eq v0, p0, :cond_3

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getLastLockTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    cmp-long p0, p0, v6

    if-lez p0, :cond_3

    const/16 p0, 0x7de

    return p0

    :cond_3
    :goto_1
    return v2

    .line 201
    :pswitch_2
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p0, :cond_5

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-eq v0, p0, :cond_5

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    .line 204
    :cond_4
    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getLastLockTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-lez p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getLastLockTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    cmp-long p0, p0, v6

    if-gez p0, :cond_5

    const/16 p0, 0x7dd

    return p0

    :cond_5
    :goto_2
    return v2

    .line 192
    :pswitch_3
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p0, :cond_7

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne v0, p0, :cond_6

    goto :goto_3

    .line 195
    :cond_6
    invoke-static {v1, v9}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x7dc

    return p0

    :cond_7
    :goto_3
    return v2

    .line 183
    :pswitch_4
    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p1, :cond_a

    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne v0, p1, :cond_8

    goto :goto_4

    .line 186
    :cond_8
    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/16 p0, 0x7db

    return p0

    :cond_a
    :goto_4
    return v2

    :pswitch_5
    const/16 p0, 0x13

    .line 177
    invoke-static {v4, p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x7da

    return p0

    :cond_b
    return v2

    .line 171
    :pswitch_6
    invoke-static {v9, v8}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x7d9

    return p0

    :cond_c
    return v2

    .line 165
    :pswitch_7
    invoke-static {v10, v5}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x7d8

    return p0

    :cond_d
    return v2

    .line 159
    :pswitch_8
    invoke-static {v10, v3}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getWeatherFromSql()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    const/16 p0, 0x7d7

    return p0

    :cond_e
    return v2

    .line 150
    :pswitch_9
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne v0, p0, :cond_f

    return v2

    .line 153
    :cond_f
    invoke-static {v10, v5}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_10

    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p0, p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0x7d6

    return p0

    :cond_10
    return v2

    .line 141
    :pswitch_a
    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne v0, p0, :cond_11

    return v2

    .line 144
    :cond_11
    invoke-static {v10, v5}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_12

    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    invoke-static {p0, p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x7d5

    return p0

    :cond_12
    return v2

    :pswitch_b
    const/4 p0, 0x6

    .line 135
    invoke-static {p0, v3}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x7d4

    return p0

    :cond_13
    return v2

    .line 124
    :pswitch_c
    :try_start_0
    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUser_birthday()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsBirthDay(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_14

    const/16 p0, 0x7d2

    return p0

    :cond_14
    return v2

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    return v2

    .line 114
    :pswitch_d
    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->THURESDAY:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    const/16 p0, 0x17

    const/16 p1, 0x18

    .line 117
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x7d1

    return p0

    :cond_16
    return v2

    .line 105
    :pswitch_e
    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq v0, p1, :cond_19

    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_5

    .line 108
    :cond_17
    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/16 p0, 0x7d0

    return p0

    :cond_19
    :goto_5
    return v2

    .line 83
    :pswitch_f
    sget-object p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    if-nez p1, :cond_1a

    .line 84
    new-instance p1, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    .line 86
    :cond_1a
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result p0

    int-to-double p0, p0

    sget-object p2, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->getMaxMusicVolume()I

    move-result p2

    int-to-double v0, p2

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v3

    cmpl-double p0, p0, v0

    if-lez p0, :cond_1b

    const/16 p0, 0x3ed

    return p0

    :cond_1b
    return v2

    .line 76
    :pswitch_10
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil;->getSystemBrightness(Landroid/content/Context;)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1c

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BrightUtil.getSystemBrightness(c) value:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil;->getSystemBrightness(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RedMagicCareUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3ec

    return p0

    :cond_1c
    return v2

    .line 70
    :pswitch_11
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil;->getSystemBrightness(Landroid/content/Context;)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x4069800000000000L    # 204.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_1d

    const/16 p0, 0x3eb

    return p0

    :cond_1d
    return v2

    .line 98
    :cond_1e
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getBatteryLavel(Landroid/content/Context;)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double p0, p0, v3

    if-nez p0, :cond_1f

    return v1

    :cond_1f
    return v2

    .line 92
    :cond_20
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsCharging(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getBatteryLavel(Landroid/content/Context;)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_21

    return v1

    :cond_21
    return v2

    .line 60
    :cond_22
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->getNetWorkState(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_23

    return v1

    :cond_23
    return v2

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static HasCheckCareItem(Landroid/content/Context;)Z
    .locals 2

    .line 527
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p0

    .line 528
    const-string v0, "scence_life"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 531
    :cond_0
    const-string v0, "scence_systerm"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 534
    :cond_1
    const-string v0, "scence_work_study"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static HasOpenSystemCare(Landroid/content/Context;)Z
    .locals 1

    .line 541
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 543
    const-string v0, "scence_systerm"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static IsBirthDay(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "IsBirthDay:monthBirth:"

    const/4 v1, 0x0

    .line 487
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 490
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 491
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 492
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 493
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    .line 496
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    const/4 v4, 0x2

    .line 497
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 498
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 500
    invoke-virtual {v3, p0}, Ljava/util/Calendar;->get(I)I

    .line 501
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 502
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v4, :cond_2

    if-ne v2, v3, :cond_2

    .line 505
    const-string v2, "RedMagicCareUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "dayBirth:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public static IsCharging(Landroid/content/Context;)Z
    .locals 6

    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 433
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    .line 435
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 438
    :goto_1
    const-string v5, "plugged"

    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-ne p0, v4, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    return v4

    :cond_4
    if-eqz p0, :cond_5

    return v4

    :cond_5
    return v3
.end method

.method public static IsMuteSpecailNet(Landroid/content/Context;)Z
    .locals 4

    .line 471
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    .line 472
    const-string/jumbo v1, "wifi_1_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 475
    :cond_0
    const-string/jumbo v1, "wifi_2_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 478
    :cond_1
    const-string v1, "mobile_data_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->getNetWorkState(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static IsMuteStatus(Landroid/content/Context;)Z
    .locals 4

    .line 454
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    .line 455
    const-string v1, "bubble_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 458
    :cond_0
    const-string/jumbo v1, "wifi_1_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 461
    :cond_1
    const-string/jumbo v1, "wifi_2_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 464
    :cond_2
    const-string v1, "mobile_data_mute"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->getNetWorkState(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static SendCaredDataToUnity(I)V
    .locals 4

    .line 291
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getVoiceId(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RedMagicCareUtil"

    if-eqz v0, :cond_0

    .line 293
    const-string p0, "voice ID == null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v2, 0x3e8

    .line 297
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v2, 0x1

    .line 298
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 299
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voice ID \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string p0, "SendCaredDataToUnity \uff1a"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public static betweenHourOfDay(II)Z
    .locals 2

    .line 278
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p0, v0, :cond_0

    if-ge v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static betweenWeekOfWeeken(II)Z
    .locals 2

    .line 264
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p0, v0, :cond_0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkIsWired(Landroid/content/Context;)Z
    .locals 4

    .line 234
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 p1, 0x2

    .line 236
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 237
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    .line 238
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static getBatteryLavel(Landroid/content/Context;)I
    .locals 1

    .line 308
    :try_start_0
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 309
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDayOfMonth(J)Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 258
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPalyCareFrequencyTime(I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x6ddd00

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x36ee80

    return-wide v0

    :cond_2
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public static getUnlockTimeBetween5MIN()Z
    .locals 9

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    sget-object v2, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return v4

    :cond_0
    move v2, v4

    .line 357
    :goto_0
    sget-object v3, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 358
    sget-object v3, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    sget-wide v7, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FIVE_MIN:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_1

    .line 359
    sget-object v3, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    sget-object v5, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listUnlockTimeTemp.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedMagicCareUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FIVE_TIME:I

    if-lt v0, v1, :cond_3

    .line 364
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    sget-object v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    return v0

    .line 369
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    sget-object v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v4
.end method

.method public static getWeather(Landroid/content/Context;)V
    .locals 2

    .line 377
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static getWiFiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string p0, ""

    return-object p0

    .line 320
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static onScreenOnStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p0

    .line 329
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 336
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result p0

    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-eq p0, p1, :cond_3

    sget p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->MONDAY:I

    sget p1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->FRIDAY:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenWeekOfWeeken(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x9

    const/16 p1, 0x12

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->betweenHourOfDay(II)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x7df

    .line 341
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->NotLimitCareTime(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 342
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :cond_3
    :goto_0
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTime:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 338
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->listUnlockTimeTemp:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 516
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 519
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 521
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
