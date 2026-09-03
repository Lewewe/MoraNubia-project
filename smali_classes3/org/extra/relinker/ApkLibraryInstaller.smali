.class public Lorg/extra/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lorg/extra/relinker/ReLinker$LibraryInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 198
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x1000

    .line 178
    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    .line 180
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v0

    :cond_0
    const/4 v3, 0x0

    .line 184
    invoke-virtual {p2, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lorg/extra/relinker/ReLinkerInstance;)Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    .locals 16

    move-object/from16 v0, p2

    .line 53
    invoke-direct/range {p0 .. p1}, Lorg/extra/relinker/ApkLibraryInstaller;->sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    aget-object v7, v1, v5

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x5

    if-ge v8, v10, :cond_0

    .line 57
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    goto :goto_2

    :catch_0
    move v8, v9

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v6, :cond_1

    move-object/from16 v13, p3

    move-object/from16 v4, p4

    goto :goto_5

    :cond_1
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v9, v8, 0x1

    if-ge v8, v10, :cond_4

    .line 72
    array-length v8, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v8, :cond_3

    aget-object v12, v0, v11

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lib"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v14, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 76
    const-string v14, "Looking for %s in APK %s..."

    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v4, p4

    invoke-virtual {v4, v14, v15}, Lorg/extra/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v6, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 81
    new-instance v0, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    invoke-direct {v0, v6, v12}, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v13, p3

    move-object/from16 v4, p4

    move v8, v9

    goto :goto_3

    :cond_4
    move-object/from16 v13, p3

    move-object/from16 v4, p4

    .line 87
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 25
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/String;

    .line 29
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v2, p1, v0

    .line 30
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p0, p0

    invoke-static {v2, v0, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 33
    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/extra/relinker/ReLinkerInstance;)V
    .locals 8

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/extra/relinker/ApkLibraryInstaller;->findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lorg/extra/relinker/ReLinkerInstance;)Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    .line 119
    :try_start_1
    const-string v1, "Found %s! Extracting..."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p5, v1, v3}, Lorg/extra/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 121
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 132
    :cond_0
    :try_start_3
    iget-object v1, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v3, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 133
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :try_start_5
    invoke-direct {p0, v1, v3}, Lorg/extra/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4

    .line 135
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 136
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 147
    :try_start_6
    invoke-direct {p0, v1}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    :goto_1
    invoke-direct {p0, v3}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6

    .line 147
    :cond_1
    invoke-direct {p0, v1}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    invoke-direct {p0, v3}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    .line 152
    invoke-virtual {p4, p0, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 153
    invoke-virtual {p4, p0, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 154
    invoke-virtual {p4, p0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_2

    .line 161
    :try_start_7
    iget-object p0, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_2

    .line 162
    iget-object p0, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v3, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-object v3, v0

    goto :goto_4

    :catch_2
    move-object v3, v0

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object v3, v0

    .line 147
    :goto_3
    :try_start_8
    invoke-direct {p0, v0}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    invoke-direct {p0, v3}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 149
    throw p2

    :catch_3
    move-object v1, v0

    move-object v3, v1

    .line 147
    :catch_4
    :goto_4
    invoke-direct {p0, v1}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_5
    move-object v1, v0

    move-object v3, v1

    :catch_6
    :goto_5
    invoke-direct {p0, v1}, Lorg/extra/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_7
    :goto_6
    move v1, v2

    goto :goto_0

    .line 158
    :cond_3
    const-string p0, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {p5, p0}, Lorg/extra/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p1, :cond_4

    .line 161
    :try_start_9
    iget-object p0, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_4

    .line 162
    iget-object p0, p1, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_4
    return-void

    .line 114
    :cond_5
    :try_start_a
    new-instance p0, Lorg/extra/relinker/MissingLibraryException;

    invoke-direct {p0, p3}, Lorg/extra/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p0

    move-object v0, p1

    goto :goto_7

    :catchall_4
    move-exception p0

    :goto_7
    if-eqz v0, :cond_6

    .line 161
    :try_start_b
    iget-object p1, v0, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_6

    .line 162
    iget-object p1, v0, Lorg/extra/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 165
    :catch_9
    :cond_6
    throw p0
.end method
