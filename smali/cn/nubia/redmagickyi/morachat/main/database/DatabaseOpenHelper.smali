.class public Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "morachat.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final VERSION_CHAT:I = 0x1

.field private static sInstance:Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    const-string v2, "morachat.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->sInstance:Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->sInstance:Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    .line 28
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->sInstance:Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDowngrade: oldVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", newVersion = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 55
    :try_start_0
    const-string p3, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 56
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
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

    .line 61
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

    .line 63
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 71
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_3
    throw p0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpgrade: oldVersion = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 80
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
