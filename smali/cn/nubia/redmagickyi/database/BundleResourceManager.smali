.class public Lcn/nubia/redmagickyi/database/BundleResourceManager;
.super Ljava/lang/Object;
.source "BundleResourceManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public insertBackground(ILjava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->searchBackground(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "insert into background(bg_id,bg_name) values(?,?)"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public queryAllBackgrounds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/BackgroundBeans;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "background"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "queryAllBackgrounds fail: "

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 32
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 33
    new-instance p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/model/BackgroundBeans;-><init>()V

    .line 34
    const-string v2, "bg_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setBgId(I)V

    .line 35
    const-string v2, "bg_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setBgName(Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 40
    throw p0
.end method

.method public resetBackground()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "resetBackgroundDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBgId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBg(Landroid/content/Context;)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->queryAllBackgrounds()Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/Utils;->setGameSpaceBgId(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from background"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "UPDATE sqlite_sequence SET seq = 0 WHERE name = \'background\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public searchBackground(I)Z
    .locals 3

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/BundleResourceManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 50
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "select * from background where bg_id=? "

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 59
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 60
    throw p1

    :cond_2
    :goto_0
    return v0
.end method
