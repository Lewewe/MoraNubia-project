.class public Lcn/nubia/redmagickyi/database/DataBaseManager;
.super Ljava/lang/Object;
.source "DataBaseManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/database/DataBaseManager;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/database/DataBaseManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/database/DataBaseManager;->instance:Lcn/nubia/redmagickyi/database/DataBaseManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcn/nubia/redmagickyi/database/DataBaseManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/database/DataBaseManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/database/DataBaseManager;->instance:Lcn/nubia/redmagickyi/database/DataBaseManager;

    .line 29
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/database/DataBaseManager;->instance:Lcn/nubia/redmagickyi/database/DataBaseManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/DataBaseManager;->init()V

    .line 30
    sget-object v1, Lcn/nubia/redmagickyi/database/DataBaseManager;->instance:Lcn/nubia/redmagickyi/database/DataBaseManager;
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
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabaseHelper:Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabaseHelper:Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabaseHelper:Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    monitor-enter p0

    .line 16
    :try_start_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/DataBaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
