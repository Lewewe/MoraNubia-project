.class public Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;
.super Ljava/lang/Object;
.source "RedMagicARSettingDataManager.java"


# static fields
.field public static final FACE_CAMERA_ID:Ljava/lang/String; = "face_camera_id"

.field public static final FACE_OPEN:Ljava/lang/String; = "face_open"

.field public static final GRAVITY:Ljava/lang/String; = "gravity"

.field public static final GREEN_BG_OPEN:Ljava/lang/String; = "green_bg_open"

.field public static final IMAGE_TRANS:Ljava/lang/String; = "image_trans"

.field public static final IMAGE_TRANS_RANGE:[I

.field public static final LIVE_MOBILE_MAIN_PARAMS:Ljava/lang/String; = "live_mobile_main_params"

.field public static final OTHER_BG:Ljava/lang/String; = "other_bg"

.field public static final SELECT_ITEM_NAME:Ljava/lang/String; = "ar_image_item"

.field public static final TABLE_FIELDS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "ar_setting_data"

.field private static final TAG:Ljava/lang/String; = "RedMagicARSettingDataManager"

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x32

    const/16 v1, 0x64

    .line 38
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->IMAGE_TRANS_RANGE:[I

    const/16 v0, 0x8

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ar_image_item"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "green_bg_open"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gravity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "other_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image_trans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "face_open"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "face_camera_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "live_mobile_main_params"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p1, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;
    .locals 1

    .line 22
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    .line 25
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    return-object p0
.end method

.method private customIntColValue(Ljava/lang/String;I)I
    .locals 0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "image_trans"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->IMAGE_TRANS_RANGE:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    if-ge p2, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 170
    aget p0, p0, p1

    if-le p2, p0, :cond_2

    move p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method private customStringColValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "image_trans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "customStringColValue, failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RedMagicARSettingDataManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 189
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customIntColValue(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    return-object p2
.end method


# virtual methods
.method public CheckARSettingData()V
    .locals 12

    .line 50
    const-string v0, "RedMagicARSettingDataManager"

    .line 0
    const-string v1, "insertARSettingData result:"

    const-string v2, "CheckARSettingData error:"

    const/4 v3, 0x0

    .line 52
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ar_setting_data"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 54
    :cond_0
    const-string v4, "CheckARSettingData success null:insert ARSett data"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v4, "image_face"

    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->insertARSettingData(Ljava/lang/String;)Z

    move-result p0

    .line 56
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

    .line 62
    :cond_1
    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 59
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

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 62
    :goto_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 63
    throw p0
.end method

.method public UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 105
    const-string p0, "RedMagicARSettingDataManager"

    .line 0
    const-string v0, "update ar_setting_data set "

    .line 105
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 106
    const-string p1, "mDatabase == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UpdateARSettingDataBySql Exception:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIntCol(Ljava/lang/String;)I
    .locals 11

    .line 141
    const-string v0, "RedMagicARSettingDataManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 144
    const-string v3, "mDatabase == null:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customIntColValue(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    .line 147
    :cond_0
    :try_start_1
    const-string v4, "ar_setting_data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 149
    const-string v3, "getStringCol cursor == null:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customIntColValue(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    .line 152
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1, v3}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customIntColValue(Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :cond_2
    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 158
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 162
    :goto_1
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customIntColValue(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 160
    :goto_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 161
    throw p0
.end method

.method public getStringCol(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 116
    const-string v0, ""

    const-string v1, "RedMagicARSettingDataManager"

    const/4 v2, 0x0

    .line 118
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 119
    const-string v3, "mDatabase == null:"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customStringColValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    .line 122
    :cond_0
    :try_start_1
    const-string v4, "ar_setting_data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 124
    const-string v3, "getStringCol cursor == null:"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customStringColValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    .line 127
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, p1, v3}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customStringColValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 133
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    :goto_1
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->customStringColValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :goto_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 136
    throw p0
.end method

.method public insertARSettingData(Ljava/lang/String;)Z
    .locals 12

    .line 67
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "RedMagicARSettingDataManager"

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez p0, :cond_0

    .line 68
    const-string p0, "insertARSettingData fail:mDatabase == null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 72
    :cond_0
    :try_start_0
    const-string v10, "insert into ar_setting_data (ar_image_item,green_bg_open,gravity,other_bg,image_trans,face_open,face_camera_id,live_mobile_main_params)values(?,?,?,?,?,?,?,?)"

    const/4 v11, 0x1

    .line 74
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, ""

    sget-object v2, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->IMAGE_TRANS_RANGE:[I

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, ""

    move-object v2, p1

    move-object v4, v8

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 72
    invoke-virtual {p0, v10, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "insertARSettingData Exception:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public insertUpdateARSettingData(Ljava/lang/String;)Z
    .locals 12

    .line 83
    const-string v0, "RedMagicARSettingDataManager"

    .line 0
    const-string v1, "insertUpdateARSettingData result:"

    const-string v2, "insertUpdateARSettingData error:"

    const/4 v3, 0x0

    .line 85
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ar_setting_data"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    const-string v1, "ar_image_item"

    invoke-virtual {p0, v1, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const-string v4, "insertUpdateARSettingData success null:insert ARSett data"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->insertARSettingData(Ljava/lang/String;)Z

    move-result p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_1
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 94
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 98
    throw p0
.end method
