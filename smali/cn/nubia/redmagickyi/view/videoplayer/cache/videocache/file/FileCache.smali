.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;


# static fields
.field private static final TEMP_POSTFIX:Ljava/lang/String; = ".download"


# instance fields
.field private dataFile:Ljava/io/RandomAccessFile;

.field private final diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/UnlimitedDiskUsage;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/UnlimitedDiskUsage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;-><init>(Ljava/io/File;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    .line 32
    :try_start_0
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 34
    invoke-static {p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Files;->makeDir(Ljava/io/File;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    if-eqz p2, :cond_1

    const-string p2, "r"

    goto :goto_1

    :cond_1
    const-string p2, "rw"

    :goto_1
    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_2
    new-instance p2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error using file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as disc cache"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private isTempFile(Ljava/io/File;)Z
    .locals 0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".download"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized append([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    const-string v0, "Error append cache: cache file "

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->available()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is completed!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    const-string v1, "Error writing %d bytes to %s from buffer with size %d"

    .line 73
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized available()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    const-string v0, "Error reading length of file "

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    :try_start_1
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    const-string v0, "Error closing file "

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    :try_start_1
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized complete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    const-string v0, "Error opening "

    const-string v1, "Error renaming file "

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->isCompleted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 90
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->close()V

    .line 94
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iput-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    .line 103
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    .line 105
    :try_start_3
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " as disc cache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for completion!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    return-object p0
.end method

.method public declared-synchronized isCompleted()Z
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->isTempFile(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BJI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    :try_start_1
    const-string v1, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 59
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->available()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p4, p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
