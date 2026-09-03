.class public Lcn/nubia/redmagickyi/database/NoticeManager;
.super Ljava/lang/Object;
.source "NoticeManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public batchUpdateNotice(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "perform batch update, insert notice size = "

    .line 63
    iget-object v2, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    :try_start_0
    iget-object v2, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", update notice size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", delete notice size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 68
    iget-object v4, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "insert into notice(notice_id,notice_type,notice_title,notice_content,publish_time,begin_time,end_time,is_expired,thumb_path,image_path) values(?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getPublishTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getBegin()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getEnd()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getThumbPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getImagePath()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 71
    iget-object v4, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "update notice set notice_type = ?, notice_title = ?, notice_content = ?, publish_time = ?, begin_time = ?, end_time = ?, is_expired = ?, thumb_path = ?, image_path = ? where notice_id = ?"

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getPublishTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getBegin()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getEnd()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getThumbPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getImagePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 74
    iget-object v3, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "delete from notice where notice_id = ?"

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    :cond_2
    iget-object v0, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 77
    iget-object v0, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->TAG:Ljava/lang/String;

    const-string v2, "batch update successes"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_3
    iget-object v0, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :goto_4
    iget-object v1, v1, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    throw v0

    :cond_3
    :goto_5
    return-void
.end method

.method public checkAvailable()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 93
    new-array v1, v1, [Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getServerTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "update notice set is_expired = 1 where end_time < ?"

    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public deleteAllNotice()V
    .locals 2

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "delete from notice"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public insertNotice(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 51
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/NoticeManager;->searchNotice(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 52
    iget-object v2, v0, Lcn/nubia/redmagickyi/database/NoticeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertNotice: newNotice "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, v0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "insert into notice(notice_id,notice_type,notice_title,notice_content,publish_time,begin_time,end_time,is_expired,thumb_path,image_path) values(?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "update notice set notice_type = ?, notice_title = ?, notice_content = ?, publish_time = ?, begin_time = ?, end_time = ?, is_expired = ?, thumb_path = ?, image_path = ? where notice_id = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public queryAllNotice()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const-string v8, "begin_time desc"

    const-string v2, "notice"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->TAG:Ljava/lang/String;

    const-string v1, "queryAllNotice fail: "

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 30
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 31
    const-string p0, "notice_id"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 32
    const-string p0, "notice_type"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 33
    const-string p0, "notice_title"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 34
    const-string p0, "notice_content"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 35
    const-string p0, "publish_time"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    const-string p0, "begin_time"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 37
    const-string p0, "end_time"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 38
    const-string p0, "is_expired"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 39
    const-string v2, "thumb_path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 40
    const-string v2, "image_path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    .line 42
    new-instance p0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 47
    throw p0
.end method

.method public searchNotice(I)Z
    .locals 4

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/NoticeManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 98
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "select * from notice where notice_id=? "

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 103
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 107
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 108
    throw p1

    :cond_2
    :goto_0
    return v0
.end method
