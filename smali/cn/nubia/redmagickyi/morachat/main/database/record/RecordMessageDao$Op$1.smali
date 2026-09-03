.class Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->insert(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

.field final synthetic val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
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

    .line 302
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 305
    const-string v0, "RecordMessageDao"

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 307
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 308
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 309
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$200(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$300(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 312
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageId(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$1;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageId(Ljava/lang/String;)V

    .line 316
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 317
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

    .line 319
    :try_start_1
    const-string v2, "Insert Error : "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 322
    throw p0
.end method
