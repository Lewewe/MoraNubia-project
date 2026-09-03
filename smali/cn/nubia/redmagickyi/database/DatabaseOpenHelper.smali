.class public Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# static fields
.field private static final ALARM_VERSION:I = 0x1f

.field private static final DANCESTUDIO_VERSION:I = 0x1d

.field private static final DATABASE_NAME:Ljava/lang/String; = "redmagickyi.db"

.field private static final DATABASE_VERSION:I = 0x1f

.field private static final MOTIONLIST_VERSION:I = 0x1e

.field private static final ONLINE_RESOURCE_VERSION:I = 0x1b

.field private static final UPDATE_IMAGES_VERSION:I = 0x1a

.field private static final WALLPAPER_HUB_VERSION:I = 0x1c


# instance fields
.field private final CREATE_TABLE_ALARM_DATA:Ljava/lang/String;

.field private final CREATE_TABLE_AR_LIVE_SETTING_DATA:Ljava/lang/String;

.field private final CREATE_TABLE_AR_SETTING_DATA:Ljava/lang/String;

.field private final CREATE_TABLE_BACKGROUND:Ljava/lang/String;

.field private final CREATE_TABLE_CARE:Ljava/lang/String;

.field private final CREATE_TABLE_CARE_SETTING_DATA:Ljava/lang/String;

.field private final CREATE_TABLE_DANCESTUDIO_DATA:Ljava/lang/String;

.field private final CREATE_TABLE_NOTICE:Ljava/lang/String;

.field private final CREATE_TABLE_WALLPAPER_HUB_DATA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    .line 89
    const-string v4, "redmagickyi.db"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    .line 23
    const-string v2, "create table if not exists notice(id integer primary key autoincrement ,notice_id integer,notice_type integer,notice_title varchar(50),notice_content varchar(2048),publish_time varchar(50), begin_time integer,end_time integer,is_expired int,thumb_path varchar(256),image_path varchar(256))"

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_NOTICE:Ljava/lang/String;

    .line 24
    const-string v2, "create table if not exists background(id integer primary key autoincrement,bg_id int,bg_name varchar(20))"

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_BACKGROUND:Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create table if not exists care(id integer primary key autoincrement ,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " integer,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " long,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v7, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v7, v7, v10

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " varchar(20),"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v12, 0x5

    aget-object v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v13, 0x6

    aget-object v11, v11, v13

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " integer)"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "create table if not exists care_setting_data(id integer primary key autoincrement ,"

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v14, v14, v4

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v14, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v14, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, " varchar(50),"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v15, v15, v9

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v15, v15, v10

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v15, v15, v12

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v16, 0x7

    aget-object v15, v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v17, 0x8

    aget-object v15, v15, v17

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v18, 0x9

    aget-object v15, v15, v18

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xa

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xb

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xc

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xd

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xe

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0xf

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0x10

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v19, 0x11

    aget-object v15, v15, v19

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE_SETTING_DATA:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "create table if not exists redmagic_images(id integer primary key autoincrement ,"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " varchar(65),"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v17

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v18

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " varchar(30))"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_LIVE_SETTING_DATA:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "create table if not exists ar_setting_data(id integer primary key autoincrement ,"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v11, v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " text)"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_SETTING_DATA:Ljava/lang/String;

    .line 68
    const-string v2, "create table if not exists wallpaper_hub(id integer primary key autoincrement ,wallpaper_id integer,type integer,new_add integer)"

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_WALLPAPER_HUB_DATA:Ljava/lang/String;

    .line 73
    const-string v2, "create table if not exists dancestudio(id integer primary key autoincrement ,video_id integer,new_add integer)"

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_DANCESTUDIO_DATA:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "create table if not exists alarm(id integer primary key autoincrement ,"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " varchar(10),"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " varchar(256),"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " varchar(50))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_ALARM_DATA:Ljava/lang/String;

    .line 90
    iput-object v1, v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 100
    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "create table if not exists background(id integer primary key autoincrement,bg_id int,bg_name varchar(20))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v0, "create table if not exists notice(id integer primary key autoincrement ,notice_id integer,notice_type integer,notice_title varchar(50),notice_content varchar(2048),publish_time varchar(50), begin_time integer,end_time integer,is_expired int,thumb_path varchar(256),image_path varchar(256))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_LIVE_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "create table if not exists wallpaper_hub(id integer primary key autoincrement ,wallpaper_id integer,type integer,new_add integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "create table if not exists dancestudio(id integer primary key autoincrement ,video_id integer,new_add integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_ALARM_DATA:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 115
    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p2, 0x0

    .line 119
    :try_start_0
    const-string p3, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 120
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 122
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 135
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_3
    throw p0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpgrade: oldVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x15

    if-lt p3, v0, :cond_0

    .line 148
    const-string v0, "drop table if exists email"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x16

    if-lt p3, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_CARE_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x17

    if-lt p3, v0, :cond_2

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_LIVE_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x1b

    if-lt p3, v0, :cond_3

    if-gt p2, v0, :cond_3

    .line 163
    const-string p2, "drop table if exists redmagic_images"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string p2, "drop table if exists ar_setting_data"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_LIVE_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_AR_SETTING_DATA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 p2, 0x1c

    if-lt p3, p2, :cond_4

    .line 171
    const-string p2, "create table if not exists wallpaper_hub(id integer primary key autoincrement ,wallpaper_id integer,type integer,new_add integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 p2, 0x1d

    if-lt p3, p2, :cond_5

    .line 174
    const-string p2, "create table if not exists dancestudio(id integer primary key autoincrement ,video_id integer,new_add integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 p2, 0x1e

    if-lt p3, p2, :cond_6

    .line 178
    const-string p2, "drop table if exists motion"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 p2, 0x1f

    if-lt p3, p2, :cond_7

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->CREATE_TABLE_ALARM_DATA:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
