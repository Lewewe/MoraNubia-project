.class public Lcn/nubia/redmagickyi/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/Utils$Defs;
    }
.end annotation


# static fields
.field public static final APP_DOWNGRADE:I = 0x2

.field public static final APP_SAME:I = 0x0

.field public static final APP_UPGRADE:I = 0x1

.field public static AUDIO_VOLUME:I = 0x64

.field public static final AUDIO_VOLUME_DEFAULT:I = 0x64

.field public static BGM_VOLUME:I = 0x3c

.field public static final BGM_VOLUME_DEFAULT:I = 0x3c

.field public static final DEFAULT_LOGIN_TOKEN:Ljava/lang/String; = ""

.field public static final FRIEND_TIMES_DAY_MAX:I = 0xf

.field public static final FRIEND_TIMES_PER_BODY_PART_DAY_MAX:I = 0x4

.field public static final FRIEND_VALUE_LEVEL_SCORE:[I

.field public static MAIN_VOLUME:I = 0x64

.field public static final MAIN_VOLUME_DEFAULT:I = 0x64

.field public static final MIN_FOCUS_LEN_VALUE:Ljava/lang/String; = "0X"

.field public static final NOTICE_AVAILABLE:I = 0x0

.field public static final NOTICE_EXPIRED:I = 0x1

.field public static NOTIFICATION_DEFAULT_CHANNEL_ID:Ljava/lang/String; = "8080"

.field public static final PREF_ACCT_INFO:Ljava/lang/String; = "pref_acct_info"

.field public static final PREF_ACHIEVEMENT_INFO:Ljava/lang/String; = "pref_achievement_info"

.field public static final PREF_ACHIEVEMENT_KICK_OUT_BY_MORA:Ljava/lang/String; = "pref_achievement_kick_out_by_mora"

.field public static final PREF_ACHIEVEMENT_REDMAGIC_CALL_COMPLETE_STATE:Ljava/lang/String; = "pref_achievement_redmagic_call_complete_state"

.field public static final PREF_APP_FIRST_TIME_USE:Ljava/lang/String; = "pref_app_first_time_use"

.field public static final PREF_APP_INFO:Ljava/lang/String; = "pref_app_info"

.field public static final PREF_APP_LAST_EXIT_TODAY:Ljava/lang/String; = "pref_app_last_exit_today"

.field public static final PREF_APP_VERSION:Ljava/lang/String; = "pref_app_version"

.field public static final PREF_APP_VERSION_UPGRADE:Ljava/lang/String; = "pref_app_version_upgrade"

.field public static final PREF_AUDIO_VOLUME:Ljava/lang/String; = "audio_volume"

.field public static final PREF_BGM_VOLUME:Ljava/lang/String; = "bgm_volume"

.field public static final PREF_DONT_REMIND_ME_TODY_TIMESTAMP:Ljava/lang/String; = "pref_dont_remind_me_tody_timestamp"

.field public static final PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

.field public static final PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

.field public static final PREF_FORCE_UPDATE_ACCT:Ljava/lang/String; = "pref_force_update_acct"

.field public static final PREF_FRIENDNESS_INFO:Ljava/lang/String; = "pref_friendness_info"

.field public static final PREF_FRIENDNESS_LEVEL:Ljava/lang/String; = "pref_friendness_level"

.field public static final PREF_FRIENDNESS_LOCAL:Ljava/lang/String; = "pref_friendness_local"

.field public static final PREF_FRIENDNESS_OFFLINE_TIMES_TODAY:Ljava/lang/String; = "pref_friendness_offline_times_today"

.field public static final PREF_FRIENDNESS_OFFLINE_TODAY:Ljava/lang/String; = "pref_friendness_offline_today"

.field public static final PREF_FRIENDNESS_ONLINE:Ljava/lang/String; = "pref_friendness_online"

.field public static final PREF_LIVE_GUIDE_MOBILE:Ljava/lang/String; = "shouldShowGuideMobile"

.field public static final PREF_LIVE_GUIDE_PC:Ljava/lang/String; = "shouldShowGuidePC"

.field public static final PREF_LIVE_INFO:Ljava/lang/String; = "pref_live_info"

.field public static final PREF_LOCAL_ID_V1:Ljava/lang/String; = "pref_local_id"

.field public static final PREF_LOCAL_ID_V2:Ljava/lang/String; = "pref_local_id_v2"

.field public static final PREF_MAIN_VOLUME:Ljava/lang/String; = "main_volume"

.field public static final PREF_NUBIA_ACCT:Ljava/lang/String; = "pref_nubia_acct"

.field public static final PREF_NUBIA_ACCT_USER_NAME_V1:Ljava/lang/String; = "pref_nubia_acct_user_name"

.field public static final PREF_NUBIA_ACCT_USER_NAME_V2:Ljava/lang/String; = "pref_nubia_acct_user_name_v2"

.field public static final PREF_POWERCHARGE_BATTERY_ID:Ljava/lang/String; = "pref_powercharge_battery_id"

.field public static final PREF_POWERCHARGE_BATTERY_LEVEL:Ljava/lang/String; = "pref_powercharge_battery_level"

.field public static final PREF_POWERCHARGE_BATTERY_UPTIME:Ljava/lang/String; = "pref_powercharge_battery_uptime"

.field public static final PREF_POWERCHARGE_INFO:Ljava/lang/String; = "pref_powercharge_info"

.field public static final PREF_SCENE_BG_ID:Ljava/lang/String; = "pref_scene_bg_id"

.field public static final PREF_SCENE_BG_INDEX:Ljava/lang/String; = "pref_scene_bg_index"

.field public static final PREF_SCENE_FOCUS_LEN:Ljava/lang/String; = "pref_scene_focus_len"

.field public static final PREF_SCENE_GAMESPACE:Ljava/lang/String; = "pref_scene_gamespace"

.field public static final PREF_SCENE_MUTE_MODE:Ljava/lang/String; = "pref_scene_mute_mode"

.field public static final PREF_SCENE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "pref_scene_orientation_portrait"

.field public static final PREF_SERVER_TIME:Ljava/lang/String; = "pref_server_time"

.field public static final PREF_SHORTCUT_INFO:Ljava/lang/String; = "pref_shortcut_info"

.field public static final PREF_SHORTCUT_LAUNCHER_NEVER:Ljava/lang/String; = "pref_shortcut_launcher_never"

.field public static final PREF_SKIN_SCENE_FOCUS_LEN:Ljava/lang/String; = "pref_skin_scene_focus_len"

.field public static final PREF_UNITY_AUDIO_VOLUME:Ljava/lang/String; = "unity_audio_volume"

.field public static final PREF_UNITY_BGM_VOLUME:Ljava/lang/String; = "unity_bgm_volume"

.field public static final PREF_USER_LOGIN_TOKEN_V1:Ljava/lang/String; = "pref_user_login_token"

.field public static final PREF_USER_LOGIN_TOKEN_V2:Ljava/lang/String; = "pref_user_login_token_v2"

.field public static final PREF_WALLPAPERHUB_DYNAMIC_PREVIEW_MUTE:Ljava/lang/String; = "pref_wallpaperhub_dynamic_preview_mute"

.field public static final PREF_WALLPAPERHUB_INFO:Ljava/lang/String; = "pref_wallpaperhub_info"

.field public static final PREF_WALLPAPERHUB_INSPIRED_TRACK_TIMESTAMP:Ljava/lang/String; = "pref_wallpaperhub_inspired_track_timestamp"

.field public static final PROP_MAGICK_SCORE:Ljava/lang/String; = "magick.score"

.field public static final PROP_MAGICK_WEATHER:Ljava/lang/String; = "magick.weather"

.field static final TAG:Ljava/lang/String; = "RedmagickyiUtils"

.field public static final ZTE_WEATHER_LOCATION_PERMISSION_ERROR:I = 0x1

.field public static final ZTE_WEATHER_REQ_INTERVAL:J = 0xea60L

.field public static delayedUpdateFriendlinessList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static needPlayWeatherMotion:Z = false

.field public static onceRequestGpsPermission:Z = false

.field public static waitWeatherPermission:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1X"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "2X"

    aput-object v3, v0, v1

    const/4 v4, 0x2

    const-string v5, "5X"

    aput-object v5, v0, v4

    sput-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    const/16 v0, 0xa

    .line 115
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x5
        0x14
        0x23
        0x4b
        0x7d
        0xe6
        0x172
        0x23f
        0x389
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTodayFirstUse(Landroid/content/Context;)Z
    .locals 4

    .line 255
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    const-string v2, "pref_app_last_exit_today"

    const-string v3, "2021-09-01"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object p0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    const-string v0, "checkTodayFirstUse: same day"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 265
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "checkTodayFirstUse: a new day"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->saveExitTime(Landroid/content/Context;)V

    .line 267
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->initFriendValueToday(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static clearLocalIdInfo(Landroid/content/Context;)Z
    .locals 7

    .line 190
    const-string v0, "pref_local_id_v2"

    const-string v1, "pref_acct_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x0

    .line 194
    :try_start_0
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v4

    .line 196
    :goto_0
    const-string v6, "pref_local_id"

    if-nez v5, :cond_0

    .line 197
    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string v1, ""

    invoke-static {v1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->initFriendValueToday(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static clearNubiaAcctInfo(Landroid/content/Context;)Z
    .locals 5

    .line 210
    const-string v0, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    .line 212
    const-string v4, "pref_nubia_acct"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    invoke-static {p0, v3}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static closeCursorSilently(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 511
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 514
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "fail to close"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAppCode(Landroid/content/Context;)I
    .locals 2

    .line 407
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_app_version"

    const/16 v1, 0x2710

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDontRemindMeTodayTimestamp(Landroid/content/Context;)J
    .locals 4

    const/4 v0, 0x0

    .line 372
    const-string v1, "pref_dont_remind_me_tody_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 373
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFocalLen(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 329
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 330
    const-string v1, "pref_scene_gamespace"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    const-string v1, "pref_scene_focus_len"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendValueLevelByScore(I)I
    .locals 5

    .line 242
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 243
    :goto_0
    sget-object v3, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 244
    aget v3, v3, v2

    if-gt p0, v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getFriendness(Landroid/content/Context;)[I
    .locals 5

    .line 469
    const-string v0, "pref_friendness_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_friendness_local"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 470
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_friendness_online"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 471
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_friendness_level"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    filled-new-array {v2, v3, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getGameSpaceBg(Landroid/content/Context;)I
    .locals 2

    .line 442
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_scene_bg_index"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getGameSpaceBgId(Landroid/content/Context;)I
    .locals 2

    .line 453
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_scene_bg_id"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLiveData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 528
    const-string v0, "shouldShowGuidePC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shouldShowGuideMobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    .line 529
    :cond_1
    :goto_0
    const-string v0, "pref_live_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 386
    const-string v0, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 389
    :try_start_0
    const-string v1, "pref_user_login_token_v2"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 393
    const-string v1, "pref_user_login_token"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 395
    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public static getMuteMode(Landroid/content/Context;)Z
    .locals 2

    .line 320
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_scene_mute_mode"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 174
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_acct_info"

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 181
    :try_start_0
    const-string v1, "pref_nubia_acct_user_name_v2"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    .line 185
    const-string v1, "pref_nubia_acct_user_name"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 187
    const-string v1, ""

    :cond_2
    return-object v1
.end method

.method public static getSavedBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 13

    .line 485
    const-string v0, "pref_powercharge_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    const-string v2, "pref_powercharge_battery_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getSystemBootId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 489
    const-string v5, "pref_powercharge_battery_uptime"

    const-string v6, "pref_powercharge_battery_level"

    const-wide/16 v7, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 490
    invoke-interface {v0, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long p0, v9, v7

    if-eqz p0, :cond_0

    sub-long/2addr v11, v9

    .line 493
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x7530

    cmp-long p0, v9, v11

    if-gez p0, :cond_0

    .line 494
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    .line 496
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 500
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 501
    invoke-interface {p0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {p0, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v3
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .locals 3

    .line 420
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 421
    const-string v0, "pref_server_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSkinFocalLen(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 356
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 357
    const-string v1, "pref_scene_gamespace"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_0
    const-string v1, "pref_skin_scene_focus_len"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWallPaperHubInspiredTrackTimestamp(Landroid/content/Context;)J
    .locals 3

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_wallpaperhub_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 564
    const-string v0, "pref_wallpaperhub_inspired_track_timestamp"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasFineLocationPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 252
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static initApplicationData(Landroid/content/Context;)I
    .locals 6

    .line 288
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isApplicationFirstTime(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    const-string v4, "initApplicationData: never inited"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionCode()I

    move-result v2

    .line 293
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/Utils;->setAppCode(Landroid/content/Context;I)V

    .line 294
    const-string p0, "pref_app_first_time_use"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v3

    .line 299
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    const-string v2, "initApplicationData: already inited"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionCode()I

    move-result v2

    .line 301
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getAppCode(Landroid/content/Context;)I

    move-result v4

    const-string v5, ":"

    if-le v4, v2, :cond_1

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initApplicationData: app downgrade "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getAppCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/Utils;->setAppCode(Landroid/content/Context;I)V

    const/4 p0, 0x2

    return p0

    .line 306
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getAppCode(Landroid/content/Context;)I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "initApplicationData: app upgrade "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getAppCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/Utils;->setAppCode(Landroid/content/Context;I)V

    return v3

    :cond_2
    return v1
.end method

.method public static initFriendValueToday(Landroid/content/Context;)V
    .locals 4

    .line 227
    const-string v0, "pref_friendness_offline_today"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 228
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    .line 229
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    const-string v0, "pref_friendness_offline_times_today"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 232
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 233
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static isAppVersionUpgrading(Landroid/content/Context;)Z
    .locals 2

    .line 404
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_app_version_upgrade"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isApplicationFirstTime(Landroid/content/Context;)Z
    .locals 2

    .line 316
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 317
    const-string v0, "pref_app_first_time_use"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isNeedForceUpdateAccount(Landroid/content/Context;)Z
    .locals 2

    .line 536
    const-string v0, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 537
    const-string v0, "pref_force_update_acct"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isOrientationPortrait(Landroid/content/Context;)Z
    .locals 2

    .line 576
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 577
    const-string v0, "pref_scene_orientation_portrait"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isWallPaperHubDynamicPreviewMute(Landroid/content/Context;)Z
    .locals 2

    .line 550
    const-string v0, "pref_wallpaperhub_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 551
    const-string v0, "pref_wallpaperhub_dynamic_preview_mute"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveExitTime(Landroid/content/Context;)V
    .locals 3

    .line 273
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "pref_app_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 276
    const-string v1, "pref_app_last_exit_today"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static savePowerchargeInfo(Landroid/content/Context;I)V
    .locals 3

    .line 476
    const-string v0, "pref_powercharge_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    const-string v1, "pref_powercharge_battery_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    const-string p1, "pref_powercharge_battery_uptime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 480
    const-string p1, "pref_powercharge_battery_id"

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getSystemBootId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setAppCode(Landroid/content/Context;I)V
    .locals 2

    .line 410
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_app_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAppVersionUpgrading(Landroid/content/Context;Z)V
    .locals 2

    .line 398
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 399
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 400
    const-string v0, "pref_app_version_upgrade"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFocalLen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 334
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 337
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 338
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 344
    :goto_2
    const-string v3, "pref_scene_gamespace"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 345
    const-string v1, "pref_scene_focus_len"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;-><init>()V

    const/16 p1, 0x3ee

    .line 349
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setMsgID(I)V

    .line 350
    aget-object p1, v0, v2

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setScaleValue(Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return v2
.end method

.method public static setForceUpdateAccount(Landroid/content/Context;Z)V
    .locals 2

    .line 542
    const-string v0, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 543
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 544
    const-string v0, "pref_force_update_acct"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFriendness(Landroid/content/Context;III)V
    .locals 3

    .line 456
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFriendness: LOCAL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ONLINE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LEVEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "pref_friendness_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    const-string v1, "pref_friendness_local"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string p1, "pref_friendness_online"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string p1, "pref_friendness_level"

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->getFriendLevelByAccount(Landroid/content/Context;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 464
    invoke-static {p0, p3}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveFriendLevel(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static setGameSpaceBg(Landroid/content/Context;I)V
    .locals 2

    .line 430
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 431
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 433
    const-string v0, "pref_scene_bg_index"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setGameSpaceBgId(Landroid/content/Context;I)V
    .locals 2

    .line 446
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 447
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 449
    const-string v0, "pref_scene_bg_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setLiveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 518
    const-string v0, "pref_live_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 519
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 520
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 521
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 522
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 523
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 525
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMuteMode(Landroid/content/Context;Z)V
    .locals 3

    .line 323
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMuteMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 325
    const-string v0, "pref_scene_mute_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_acct_info"

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 167
    :goto_0
    const-string v0, "pref_nubia_acct_user_name_v2"

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string p1, "pref_nubia_acct_user_name"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setOrientationPortrait(Landroid/content/Context;Z)V
    .locals 2

    .line 580
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 581
    const-string v0, "pref_scene_orientation_portrait"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 582
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSkinFocalLen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 361
    const-string v0, "pref_scene_gamespace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 362
    const-string v0, "pref_skin_scene_focus_len"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWallPaperHubDynamicPreviewMute(Landroid/content/Context;Z)V
    .locals 2

    .line 556
    const-string v0, "pref_wallpaperhub_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 557
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 558
    const-string v0, "pref_wallpaperhub_dynamic_preview_mute"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setWallPaperHubInspiredTrackTimestamp(Landroid/content/Context;J)V
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_wallpaperhub_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 569
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 570
    const-string v0, "pref_wallpaperhub_inspired_track_timestamp"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 571
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateDontRemindMeTodayTimestamp(Landroid/content/Context;J)V
    .locals 2

    const/4 v0, 0x0

    .line 366
    const-string v1, "pref_dont_remind_me_tody_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 367
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 368
    invoke-interface {p0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 377
    const-string v0, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 378
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 379
    const-string v0, "pref_user_login_token_v2"

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string p1, "pref_user_login_token"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateServerTime(Landroid/content/Context;J)V
    .locals 2

    .line 414
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 415
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 416
    const-string v0, "pref_server_time"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
