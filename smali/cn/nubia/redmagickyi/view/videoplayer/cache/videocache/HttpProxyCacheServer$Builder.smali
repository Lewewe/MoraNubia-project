.class public final Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L


# instance fields
.field public cacheRoot:Ljava/io/File;

.field public diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

.field public fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

.field public headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

.field public sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    const/4 v0, 0x0

    .line 361
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorageFactory;->newSourceInfoStorage(Landroid/content/Context;Ljava/io/File;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    .line 362
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;-><init>(J)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    .line 363
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Md5FileNameGenerator;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Md5FileNameGenerator;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    .line 364
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/EmptyHeadersInjector;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/EmptyHeadersInjector;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;
    .locals 0

    .line 349
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->buildConfig()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    move-result-object p0

    return-object p0
.end method

.method private buildConfig()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;
    .locals 7

    .line 457
    new-instance v6, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;-><init>(Ljava/io/File;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;)V

    return-object v6
.end method


# virtual methods
.method public build()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
    .locals 2

    .line 452
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->buildConfig()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    move-result-object p0

    .line 453
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$1;)V

    return-object v0
.end method

.method public cacheDirectory(Ljava/io/File;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 0

    .line 380
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    return-object p0
.end method

.method public diskUsage(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 0

    .line 431
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    return-object p0
.end method

.method public fileNameGenerator(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 0

    .line 391
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    return-object p0
.end method

.method public headerInjector(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 0

    .line 442
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    return-object p0
.end method

.method public maxCacheFilesCount(I)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 1

    .line 420
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalCountLruDiskUsage;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalCountLruDiskUsage;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    return-object p0
.end method

.method public maxCacheSize(J)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 1

    .line 407
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    return-object p0
.end method
