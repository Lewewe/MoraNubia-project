.class public Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs deleteDir(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 18
    array-length p0, p1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v1, p1, v2

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 28
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 29
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 30
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    array-length v5, p1

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_4

    aget-object v8, p1, v7

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 40
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/String;

    invoke-static {v5, v7}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 45
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 49
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    :goto_4
    return-void
.end method

.method public static getFileSizes(Ljava/io/File;)J
    .locals 5

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 63
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 64
    aget-object v3, p0, v2

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method
