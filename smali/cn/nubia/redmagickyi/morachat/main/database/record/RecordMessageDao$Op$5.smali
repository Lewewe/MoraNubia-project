.class Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->executeSQL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

.field final synthetic val$sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Ljava/lang/String;)V
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

    .line 396
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;->val$sql:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 402
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 403
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$5;->val$sql:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 407
    :try_start_1
    const-string v1, "RecordMessageDao"

    const-string v2, "Update Error : "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 410
    throw p0
.end method
