.class public Lcn/nubia/redmagickyi/care/utils/SPCareUtils;
.super Ljava/lang/Object;
.source "SPCareUtils.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "redmagic_sp_care"

.field public static final LAST_GET_WEATHER_TIME:Ljava/lang/String; = "last_get_weather_time"

.field public static final LAST_LOCK_TIME:Ljava/lang/String; = "last_lock_time"

.field public static final LAST_WEATHER_DEFALT:J = 0x0L

.field public static final MOOD_MOTION_TYPE:Ljava/lang/String; = "moon_motion_type"

.field public static final MUTE_VOLUM_STATUS:Ljava/lang/String; = "mute_volume"

.field public static final SCENCE_LIFE:Ljava/lang/String; = "scence_life"

.field public static final SCENCE_SYSTERM:Ljava/lang/String; = "scence_systerm"

.field public static final SCENCE_WORK_STUDY:Ljava/lang/String; = "scence_work_study"

.field public static final USER_TYPE:Ljava/lang/String; = "user_type"

.field private static context:Landroid/content/Context;

.field private static spCareUtils:Lcn/nubia/redmagickyi/care/utils/SPCareUtils;


# instance fields
.field private COMPANY_WIFI_SSID:Ljava/lang/String;

.field private HOME_WIFI_SSID:Ljava/lang/String;

.field public user_birthday:Ljava/lang/String;

.field public user_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->user_type:I

    .line 35
    const-string v0, "2022-04-27"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->user_birthday:Ljava/lang/String;

    .line 36
    const-string v0, "nubia"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->HOME_WIFI_SSID:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->COMPANY_WIFI_SSID:Ljava/lang/String;

    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/care/utils/SPCareUtils;
    .locals 0

    .line 17
    sput-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->context:Landroid/content/Context;

    .line 18
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->spCareUtils:Lcn/nubia/redmagickyi/care/utils/SPCareUtils;

    if-nez p0, :cond_0

    .line 19
    new-instance p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;-><init>()V

    sput-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->spCareUtils:Lcn/nubia/redmagickyi/care/utils/SPCareUtils;

    .line 21
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->spCareUtils:Lcn/nubia/redmagickyi/care/utils/SPCareUtils;

    return-object p0
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2

    .line 116
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 131
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 133
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 77
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 81
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 84
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 87
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 88
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 89
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 90
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 143
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 47
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 52
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 55
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 56
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 57
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 58
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 59
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 60
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 61
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 103
    const-string v0, "redmagic_sp_care"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 106
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getCOMPANY_WIFI_SSID()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->COMPANY_WIFI_SSID:Ljava/lang/String;

    return-object p0
.end method

.method public getHOME_WIFI_SSID()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->HOME_WIFI_SSID:Ljava/lang/String;

    return-object p0
.end method

.method public getLastLockTime()J
    .locals 2

    .line 165
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_lock_time"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWeatherTime()J
    .locals 2

    .line 169
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->context:Landroid/content/Context;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_get_weather_time"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUser_birthday()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->user_birthday:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_type()I
    .locals 2

    .line 149
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->context:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "user_type"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWeatherFromSp()I
    .locals 2

    .line 173
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "moon_motion_type"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/care/utils/SPCareUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
