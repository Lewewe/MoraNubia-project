.class public Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
.super Ljava/lang/Object;
.source "RedMagicCareSettingDataManager.java"


# static fields
.field public static final CARE_BUBBLE_MUTE:Ljava/lang/String; = "bubble_mute"

.field public static final CARE_DATA_HAS_SET:Ljava/lang/String; = "has_set_not_first"

.field public static final CARE_MOBILE_DATA_MUTE:Ljava/lang/String; = "mobile_data_mute"

.field public static final CARE_OPEN_BUBBLE:Ljava/lang/String; = "open_bubble"

.field public static final CARE_VOICE_PALY_FREQUENCY:Ljava/lang/String; = "play_frequency"

.field public static final CARE_WIFI_1_MUTE:Ljava/lang/String; = "wifi_1_mute"

.field public static final CARE_WIFI_2_MUTE:Ljava/lang/String; = "wifi_2_mute"

.field public static final COMPANY_WIFI_SSID:Ljava/lang/String; = "company_wifi"

.field public static final HOME_WIFI_SSID:Ljava/lang/String; = "home_wifi"

.field public static final LAST_GET_WEATHER_TIME:Ljava/lang/String; = "last_get_weather_time"

.field public static final LAST_LOCK_TIME:Ljava/lang/String; = "last_lock_time"

.field public static final MOOD_MOTION_TYPE:Ljava/lang/String; = "moon_motion_type"

.field public static MUTE_VOLUM_STATUS:Ljava/lang/String; = "mute_volume"

.field public static final SCENCE_LIFE:Ljava/lang/String; = "scence_life"

.field public static final SCENCE_LIFE_INIT:I = 0x1

.field public static final SCENCE_STUDY_WORK_INIT:I = 0x2

.field public static final SCENCE_SYSTERM:Ljava/lang/String; = "scence_systerm"

.field public static final SCENCE_SYSTERM_INIT:I = 0x0

.field public static final SCENCE_WORK_STUDY:Ljava/lang/String; = "scence_work_study"

.field public static final TABLE_FIELDS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "care_setting_data"

.field private static final TAG:Ljava/lang/String; = "RedMagicCareSettingDataManager"

.field public static final USER_BIRTHDAY:Ljava/lang/String; = "user_birthday"

.field public static final USER_TYPE:Ljava/lang/String; = "user_type"

.field private static context:Landroid/content/Context;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_birthday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "home_wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "company_wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "scence_work_study"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "scence_life"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "scence_systerm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "moon_motion_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mute_volume"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "last_lock_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_get_weather_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "play_frequency"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "open_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bubble_mute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "wifi_1_mute"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "wifi_2_mute"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mobile_data_mute"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "has_set_not_first"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mContext:Landroid/content/Context;

    .line 19
    sput-object p2, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
    .locals 2

    .line 26
    sput-object p0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->context:Landroid/content/Context;

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 30
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-object p0
.end method

.method public static UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 98
    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "update care_setting_data set "

    .line 98
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 99
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "UpdateCurrentCareTimes Exception:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public CheckCareSettingData()V
    .locals 12

    .line 59
    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "CheckCareSettingData result:"

    const-string v2, "CheckCareSettingData error:"

    const/4 v3, 0x0

    .line 61
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "care_setting_data"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 63
    :cond_0
    const-string v4, "CheckCareSettingData success null:insert caresetting data"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->insertCareSettingData()Z

    move-result p0

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 68
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 71
    :goto_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 72
    throw p0
.end method

.method public IsCheckThisScenceCare(Landroid/content/Context;I)Z
    .locals 0

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 145
    :cond_0
    const-string p1, "scence_work_study"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 143
    :cond_1
    const-string p1, "scence_life"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 141
    :cond_2
    const-string p1, "scence_systerm"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBubbleMute()I
    .locals 13

    .line 397
    const-string p0, "bubble_mute"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "cursor.getCount getBubbleMute():"

    const-string v2, "getBubbleMute Exception:"

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 399
    :try_start_0
    sget-object v5, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 400
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v3

    .line 403
    :cond_0
    :try_start_1
    const-string v6, "care_setting_data"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 405
    const-string p0, "getBubbleMute cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v3

    .line 408
    :cond_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 409
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 414
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    :cond_2
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v3

    :goto_0
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 417
    throw p0
.end method

.method public getCOMPANY_WIFI_SSID()Ljava/lang/String;
    .locals 12

    .line 253
    const-string p0, "company_wifi"

    const-string v0, ""

    const-string v1, "RedMagicCareSettingDataManager"

    .line 0
    const-string v2, "getCOMPANY_WIFI_SSID Exception:"

    const/4 v3, 0x0

    .line 255
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 256
    const-string p0, "mDatabase == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 259
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 261
    const-string p0, "getCOMPANY_WIFI_SSID cursor == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 264
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 272
    throw p0
.end method

.method public getHOME_WIFI_SSID()Ljava/lang/String;
    .locals 12

    .line 181
    const-string p0, "home_wifi"

    const-string v0, ""

    const-string v1, "RedMagicCareSettingDataManager"

    .line 0
    const-string v2, "getHOME_WIFI_SSID Exception:"

    const/4 v3, 0x0

    .line 183
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 184
    const-string p0, "mDatabase == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 187
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 189
    const-string p0, "getScenceCareStatus cursor == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 192
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 200
    throw p0
.end method

.method public getLastLockTime()J
    .locals 13

    .line 277
    const-string p0, "last_lock_time"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getLastLockTime Exception:"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 279
    :try_start_0
    sget-object v5, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 280
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    .line 283
    :cond_0
    :try_start_1
    const-string v6, "care_setting_data"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 285
    const-string p0, "getLastLockTime cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    .line 288
    :cond_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    :cond_2
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    :goto_0
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 296
    throw p0
.end method

.method public getLastWeatherTime()J
    .locals 13

    .line 301
    const-string p0, "last_get_weather_time"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getLastWeatherTime Exception:"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 303
    :try_start_0
    sget-object v5, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 304
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    .line 307
    :cond_0
    :try_start_1
    const-string v6, "care_setting_data"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 309
    const-string p0, "getLastWeatherTime cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    .line 312
    :cond_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 317
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :cond_2
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-wide v2

    :goto_0
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 320
    throw p0
.end method

.method public getMUTE_VOLUM_STATUS()I
    .locals 11

    .line 325
    const-string p0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v0, "getMUTE_VOLUM_STATUS Exception:"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 327
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 328
    const-string v3, "mDatabase == null:"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 331
    :cond_0
    :try_start_1
    const-string v4, "care_setting_data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 333
    const-string v3, "getMUTE_VOLUM_STATUS cursor == null:"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 336
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 341
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    :cond_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 344
    throw p0
.end method

.method public getMute(Ljava/lang/String;)Z
    .locals 12

    .line 422
    const-string p0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v0, "getMute Exception:"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 424
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 425
    const-string p1, "mDatabase == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 428
    :cond_0
    :try_start_1
    const-string v4, "care_setting_data"

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 430
    const-string p1, "getMute cursor == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 433
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v11, :cond_2

    .line 443
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v11

    :cond_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :cond_3
    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 441
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 443
    :goto_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 444
    throw p0
.end method

.method public getNotFirstTime()Z
    .locals 13

    .line 449
    const-string p0, "has_set_not_first"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getNotFirstTime Exception:"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 451
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 452
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 455
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    aput-object p0, v6, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 457
    const-string p0, "getNotFirstTime cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 460
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v12, :cond_2

    .line 470
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v12

    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :cond_3
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 471
    throw p0
.end method

.method public getOpenBubble()I
    .locals 12

    .line 373
    const-string p0, "open_bubble"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getOpenBubble Exception:"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 375
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 376
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 379
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 381
    const-string p0, "getOpenBubble cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 384
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 389
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 392
    throw p0
.end method

.method public getPlayFrequency()I
    .locals 12

    .line 349
    const-string p0, "play_frequency"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getPlayFrequency Exception:"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 351
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 352
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 355
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 357
    const-string p0, "getMUTE_VOLUM_STATUS cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 360
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 365
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 368
    throw p0
.end method

.method public getScenceCareStatus(Ljava/lang/String;)Z
    .locals 12

    .line 153
    const-string p0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v0, "getScenceCareStatus Exception:"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 155
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 156
    const-string p1, "mDatabase == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 159
    :cond_0
    :try_start_1
    const-string v4, "care_setting_data"

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 161
    const-string p1, "getScenceCareStatus cursor == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 164
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v11, :cond_2

    .line 175
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v11

    :cond_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :cond_3
    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 173
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 175
    :goto_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 176
    throw p0
.end method

.method public getUserType()I
    .locals 12

    .line 110
    const-string p0, "user_type"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getUserType Exception:"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 112
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 113
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 116
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 118
    const-string p0, "UpdateTodayCareData cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 121
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 129
    throw p0
.end method

.method public getUser_birthday()Ljava/lang/String;
    .locals 12

    .line 205
    const-string p0, "user_birthday"

    const-string v0, ""

    const-string v1, "RedMagicCareSettingDataManager"

    .line 0
    const-string v2, "getUser_birthday Exception:"

    const/4 v3, 0x0

    .line 207
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 208
    const-string p0, "mDatabase == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 211
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 213
    const-string p0, "getUser_birthday cursor == null:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    .line 216
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 221
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 224
    throw p0
.end method

.method public getWeatherFromSql()I
    .locals 12

    .line 229
    const-string p0, "moon_motion_type"

    const-string v0, "RedMagicCareSettingDataManager"

    .line 0
    const-string v1, "getWeatherFromSql Exception:"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 231
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 232
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 235
    :cond_0
    :try_start_1
    const-string v5, "care_setting_data"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 237
    const-string p0, "getWeatherFromSql cursor == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 240
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 248
    throw p0
.end method

.method public insertCareSettingData()Z
    .locals 24

    .line 76
    const-string v0, ","

    .line 0
    const-string v1, "insert into care_setting_data ("

    .line 76
    sget-object v2, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "RedMagicCareSettingDataManager"

    const/4 v4, 0x0

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    if-nez v2, :cond_0

    .line 77
    const-string v0, "insertCareSettingData fail:mDatabase == null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 81
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v23, 0x1

    aget-object v6, v1, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xb

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xd

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xe

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xf

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x11

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v5, v22

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v22

    filled-new-array/range {v5 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v23

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertCareSettingData Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
