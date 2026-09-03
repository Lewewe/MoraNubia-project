.class Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Op"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$1;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 356
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$3;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeSQL(Ljava/lang/String;)V
    .locals 2

    .line 396
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insert(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 302
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 328
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    move-object v0, p0

    .line 285
    const-string v1, "RecordMessageDao"

    .line 0
    const-string v2, "Query successful, "

    .line 285
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    .line 288
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 289
    iget-object v5, v0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v5, v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 290
    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$200(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p3

    .line 291
    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 294
    :try_start_1
    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v4

    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 297
    throw v0
.end method

.method public update(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 376
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
