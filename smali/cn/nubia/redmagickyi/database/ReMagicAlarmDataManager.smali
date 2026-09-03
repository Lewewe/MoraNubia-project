.class public Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;
.super Ljava/lang/Object;
.source "ReMagicAlarmDataManager.java"


# static fields
.field public static final ACTION_ID:Ljava/lang/String; = "action_id"

.field public static final ALARM_SWITCH:Ljava/lang/String; = "alarm_switch"

.field public static final ALARM_TIME_INMILLIS:Ljava/lang/String; = "alarm_time_inmillis"

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final REPEAT_TYPE:Ljava/lang/String; = "repeat_type"

.field public static final REPEAT_WEEK:Ljava/lang/String; = "repeat_week"

.field public static final TABLE_FIELDS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "alarm"

.field private static final TAG:Ljava/lang/String; = "ReMagicAlarmDataManager"

.field public static final TIEM:Ljava/lang/String; = "time"

.field public static final VOICE:Ljava/lang/String; = "voice"

.field private static context:Landroid/content/Context;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alarm_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alarm_time_inmillis"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "repeat_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "action_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voice"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarm_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "repeat_week"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mContext:Landroid/content/Context;

    .line 28
    sput-object p2, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;
    .locals 2

    .line 35
    sput-object p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->context:Landroid/content/Context;

    .line 36
    sget-object v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    .line 39
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    return-object p0
.end method

.method public static UpdateAlarmDataById(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 174
    const-string v0, "ReMagicAlarmDataManager"

    .line 0
    const-string v1, "update alarm set "

    const-string v2, "UpdateAlarmDataBySql:col:"

    .line 174
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 175
    const-string p0, "mDatabase == null:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  obj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  col_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v2, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "=? where id = ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "UpdateAlarmDataBySql Exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method public static getMaxId()I
    .locals 6

    .line 188
    const-string v0, "ReMagicAlarmDataManager"

    const-string v1, "getMaxId Exception:"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 190
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 191
    const-string v4, "mDatabase == null:"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    .line 194
    :cond_0
    :try_start_1
    const-string v4, "Select max(id) from alarm"

    .line 195
    const-string v5, "sqlStr:Select max(id) from alarm"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v5, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 197
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 202
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :cond_1
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 205
    throw v0
.end method


# virtual methods
.method public datasSort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager$1;-><init>(Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public declared-synchronized deleteById(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V
    .locals 2

    monitor-enter p0

    .line 148
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 150
    :try_start_1
    const-string v1, "delete from alarm  where id = ?"

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 154
    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAlarmDataById(I)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;
    .locals 12

    .line 117
    sget-object p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 118
    const-string p0, "ReMagicAlarmDataManager"

    const-string p1, "getAlarmDataById fail:mDatabase == null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-eqz p0, :cond_3

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "select * from alarm  where id=? "

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 127
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    const-string p1, "id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 129
    const-string p1, "time"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string p1, "alarm_type"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 131
    const-string p1, "alarm_time_inmillis"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 132
    const-string p1, "repeat_type"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 133
    const-string p1, "label"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    const-string p1, "action_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 135
    const-string p1, "voice"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    const-string p1, "alarm_switch"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 137
    const-string p1, "repeat_week"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 138
    new-instance p1, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;-><init>(ILjava/lang/String;IJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p1

    :cond_2
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 142
    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public insertAlarmData(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)Z
    .locals 16

    .line 58
    const-string v0, ","

    .line 0
    const-string v1, "insert into alarm ("

    .line 58
    sget-object v2, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ReMagicAlarmDataManager"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 59
    const-string v0, "insertCareData fail:mDatabase == null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 63
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x4

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x5

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x6

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x7

    aget-object v7, v1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x8

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")values(?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getVocie()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v15

    filled-new-array/range {v7 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    .line 63
    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertAlarmData Exception:"

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

.method public queryAllAlarm()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    sget-object v1, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const-string v8, ""

    const-string v2, "alarm"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    const-string p0, "ReMagicAlarmDataManager"

    const-string v1, "queryAllAlarm fail: "

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 96
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 98
    const-string v2, "time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    const-string v2, "alarm_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 100
    const-string v2, "alarm_time_inmillis"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 101
    const-string v2, "repeat_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 102
    const-string v2, "label"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 103
    const-string v2, "action_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 104
    const-string v2, "voice"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 105
    const-string v2, "alarm_switch"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 106
    const-string v2, "repeat_week"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 107
    new-instance v2, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;-><init>(ILjava/lang/String;IJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 112
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->datasSort(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 110
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 111
    throw p0
.end method

.method public updateAlarmData(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V
    .locals 12

    .line 73
    const-string p0, "ReMagicAlarmDataManager"

    .line 0
    const-string v0, "updateAlarmData getAlarm_time_millis\uff1a"

    .line 73
    sget-object v1, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update alarm  set time = ?, alarm_type = ?, alarm_time_inmillis = ?, repeat_type = ?, label = ?, action_id = ?, voice = ?, alarm_switch = ?, repeat_week = ? where id = ?"

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getVocie()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object p1, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 79
    const-string p1, "updateAlarmData update successes"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    sget-object p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :goto_1
    sget-object p1, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    throw p0

    :cond_0
    :goto_2
    return-void
.end method
