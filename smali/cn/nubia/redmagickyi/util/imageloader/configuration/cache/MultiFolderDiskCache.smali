.class public Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;
.super Ljava/lang/Object;
.source "MultiFolderDiskCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:J = 0x7fffffffffffffffL

.field private static final TAG:Ljava/lang/String; = "MultiFolderDiskCache"


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCache;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->context:Landroid/content/Context;

    return-void
.end method

.method private extractFolderNameFromKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;->parseFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCacheForKey(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->extractFolderNameFromKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getOrCreateCache(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateCache(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 4

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    .line 54
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 55
    new-instance v2, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;-><init>()V

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->replaceSafeKeyGenerator(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;)V

    .line 56
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object p0
.end method

.method private replaceSafeKeyGenerator(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;)V
    .locals 1

    .line 69
    :try_start_0
    const-class p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    const-string v0, "safeKeyGenerator"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->setHockSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 111
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->cacheMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    :cond_0
    return-void
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFolderDiskCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheForKey(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFolderDiskCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheForKey(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "put key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFolderDiskCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;->getCacheForKey(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    return-void
.end method
