.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public final cacheRoot:Ljava/io/File;

.field public final diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

.field public final fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

.field public final headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

.field public final sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;


# direct methods
.method constructor <init>(Ljava/io/File;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->cacheRoot:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    .line 26
    iput-object p3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    .line 27
    iput-object p4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    .line 28
    iput-object p5, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    return-void
.end method


# virtual methods
.method generateCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->cacheRoot:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
