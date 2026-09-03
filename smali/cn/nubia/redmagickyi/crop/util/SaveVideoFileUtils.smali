.class public Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field private static final OUTPUT_PATH:Ljava/lang/String; = "DCIM/Camera/Video"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDstMp4FileInfoFromSaveUri(Landroid/content/Context;Landroid/net/Uri;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;
    .locals 2

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;-><init>()V

    .line 28
    invoke-static {p0, p1}, Lcn/nubia/mediaeditor/utils/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iput-object p0, v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    .line 36
    iput-object p1, v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private static getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x1

    .line 76
    new-array v1, v0, [Ljava/io/File;

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_data"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$1;

    invoke-direct {v2, v1}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v0, v2}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    .line 85
    aget-object p0, v1, v3

    return-object p0
.end method

.method public static insertContent(Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 95
    div-long v2, v0, v2

    .line 96
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 97
    const-string v5, "title"

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, "mime_type"

    const-string v6, "video/mp4"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v0, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v0, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_size"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->retriveVideoDurationMs(Ljava/lang/String;)I

    move-result p0

    .line 106
    const-string v0, "duration"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x4

    .line 108
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "latitude"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "longitude"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "resolution"

    aput-object v1, p0, v0

    .line 116
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$2;

    invoke-direct {v0, v4}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p1, p2, p0, v0}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    .line 138
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static overWriteFile(Ljava/lang/String;Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;Landroid/content/ContentResolver;)I
    .locals 1

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    new-instance p0, Ljava/io/File;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    invoke-static {v0, p2}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->updateContent(Ljava/io/File;Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p3, v6}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    .line 57
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 54
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v6, :cond_2

    .line 57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_2
    throw p0
.end method

.method public static retriveVideoDurationMs(Ljava/lang/String;)I
    .locals 2

    .line 156
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 158
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 159
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v1, p0

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private static updateContent(Ljava/io/File;Landroid/content/ContentResolver;)I
    .locals 5

    .line 142
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->retriveVideoDurationMs(Ljava/lang/String;)I

    move-result v1

    .line 145
    const-string v2, "duration"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 147
    const-string v3, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x3e8

    .line 148
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_data=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
