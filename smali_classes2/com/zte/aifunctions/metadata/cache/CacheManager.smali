.class public Lcom/zte/aifunctions/metadata/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/io/File;


# instance fields
.field private cacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "config_ai_functions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->CACHE_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aifunctions/metadata/cache/CacheManager;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->cacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zte/aifunctions/metadata/cache/CacheManager;Lcom/zte/aifunctions/metadata/cache/CacheEntry;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->cacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    return-object p1
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .line 32
    sget-object v0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->CACHE_FILE:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized editor()Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->readCacheFile()Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    .line 51
    new-instance v0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;

    invoke-direct {v0, p0}, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;-><init>(Lcom/zte/aifunctions/metadata/cache/CacheManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readCacheFile()Lcom/zte/aifunctions/metadata/cache/CacheEntry;
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->cacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    if-nez v0, :cond_2

    .line 38
    sget-object v0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->CACHE_FILE:Ljava/io/File;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getSystemUI_pid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager;->cacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
