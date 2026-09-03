.class public Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;
.super Ljava/lang/Object;
.source "LRULimitedMemoryCache.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final LOAD_FACTOR:F = 1.1f


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final lruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I

.field private final softMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->hardCache:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->sizeLimit:I

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method protected getSizeLimit()I
    .locals 0

    .line 94
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->sizeLimit:I

    return p0
.end method

.method public keys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    monitor-enter v0

    .line 82
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 7

    .line 45
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->getSizeLimit()I

    move-result v1

    .line 47
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    :cond_0
    :goto_0
    add-int v5, v2, v0

    if-le v5, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 51
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v5}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    .line 60
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v4
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 76
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 105
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
