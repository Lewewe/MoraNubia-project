.class Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->insert(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

.field final synthetic val$chatMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->val$chatMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 331
    const-string v0, "RecordMessageDao"

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 333
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 334
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->val$chatMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 336
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$200(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v5, v5, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v5, v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$300(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 339
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageId(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageId(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 345
    const-string p0, "Insert successful"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 347
    :try_start_1
    const-string v2, "Insert Error : "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 350
    throw p0
.end method
