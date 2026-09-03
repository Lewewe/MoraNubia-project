.class Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->update(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

.field final synthetic val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 379
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 381
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 382
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$200(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->this$1:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->this$0:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$chatMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->access$300(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$selection:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
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

    .line 387
    :try_start_1
    const-string v1, "RecordMessageDao"

    const-string v2, "Update Error : "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 390
    throw p0
.end method
