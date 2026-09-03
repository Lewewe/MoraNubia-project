.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseSourceInfoStorage.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LENGTH:Ljava/lang/String; = "length"

.field private static final COLUMN_MIME:Ljava/lang/String; = "mime"

.field private static final COLUMN_URL:Ljava/lang/String; = "url"

.field private static final CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

.field private static final TABLE:Ljava/lang/String; = "SourceInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    const-string v2, "AndroidVideoCache.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private convert(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;)Landroid/content/ContentValues;
    .locals 2

    .line 92
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    const-string v0, "url"

    iget-object v1, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-wide v0, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;->length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "length"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v0, "mime"

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;->mime:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private convert(Landroid/database/Cursor;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;
    .locals 4

    .line 84
    new-instance p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;

    const-string v0, "url"

    .line 85
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    .line 86
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "mime"

    .line 87
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;
    .locals 9

    .line 53
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SourceInfo"

    sget-object v3, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v4, "url=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 57
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Landroid/database/Cursor;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_3
    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string p0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called. There is no any migration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public put(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;)V
    .locals 4

    .line 67
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->get(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 70
    :goto_0
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/SourceInfo;)Landroid/content/ContentValues;

    move-result-object p2

    .line 71
    const-string v3, "SourceInfo"

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string p1, "url=?"

    invoke-virtual {p0, v3, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;->close()V

    return-void
.end method
