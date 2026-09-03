.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;
.super Landroid/content/ContextWrapper;
.source "DatabaseContext.java"


# instance fields
.field private mCacheRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;->mCacheRoot:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 21
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;->mCacheRoot:Ljava/io/File;

    if-nez v0, :cond_0

    .line 22
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;->mCacheRoot:Ljava/io/File;

    const-string v1, "databases"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
