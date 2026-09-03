.class public abstract Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;
.super Ljava/lang/Object;
.source "BaseImageLoader.java"


# instance fields
.field protected final diskCache:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

.field private loader:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;->build()Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->diskCache:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public clearCachedFiles()V
    .locals 3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->diskCache:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getCacheFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 65
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$3;-><init>(Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;)V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroy()V

    :cond_0
    return-void
.end method

.method protected abstract getCacheFolderName()Ljava/lang/String;
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getLoader()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->diskCache:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getCacheFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 46
    new-instance v2, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$2;-><init>(Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 53
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected abstract getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
.end method

.method protected getLoader()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
    .locals 5

    .line 30
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$1;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->getCacheFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader$1;-><init>(Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;Landroid/content/Context;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 38
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;->loader:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    return-object p0
.end method
